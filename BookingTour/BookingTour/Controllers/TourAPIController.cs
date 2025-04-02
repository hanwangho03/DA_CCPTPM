using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BookingTour.Data;
using BookingTour.Models;
using Microsoft.AspNetCore.Authorization;
using System.Threading.Tasks;
using System.Linq;
using System.Collections.Generic;

namespace BookingTour.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Produces("application/json")]
    public class TourAPIController : ControllerBase
    {
        private readonly YourExistingDbContextName _context;
        private readonly AppDbContext _context1;

        public TourAPIController(YourExistingDbContextName context, AppDbContext context1)
        {
            _context = context;
            _context1 = context1;
        }

        // GET: api/tourapi
        [HttpGet]
        public async Task<IActionResult> GetTours([FromQuery] int page = 1, [FromQuery] int pageSize = 10)
        {
            var toursQuery = _context.Tours
                .Where(t => t.ApprovalStatus == "Đã phê duyệt" && t.IsDelete == "N")
                .Select(t => new
                {
                    t.IdTour,
                    t.Name,
                    t.Description,
                    t.Image,
                    t.StartDate,
                    t.EndDate,
                    t.MaxQuantity,
                    t.Price,
                    t.IsDelete,
                    t.IdType,
                    IdTypeName = t.IdTypeNavigation.Name,
                    t.IdTrans,
                    IdTransName = t.IdTransNavigation.Name,
                    t.IdHotel,
                    IdHotelName = t.IdHotelNavigation.Name,
                    t.ApprovalStatus,
                    t.IdUser
                });

            var tours = await toursQuery
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();

            return Ok(tours);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetTour(long id)
        {
            var tour = await _context.Tours
                .FirstOrDefaultAsync(t => t.IdTour == id);

            if (tour == null)
            {
                return NotFound();
            }

            // Lấy danh sách hình ảnh từ bảng Images
            var images = await _context1.Images
                .Where(i => i.IdTour == tour.IdTour)
                .ToListAsync();

            // Tạo đối tượng trả về với cấu trúc mong muốn
            var tourResponse = new
            {
                tour.IdTour,
                tour.Name,
                tour.Description,
                tour.Image,
                tour.StartDate,
                tour.EndDate,
                tour.MaxQuantity,
                tour.Price,
                tour.IsDelete,
                tour.IdType,
                tour.IdTrans,
                tour.IdHotel,
                tour.ApprovalStatus,
                tour.IdUser,
                Images = images, // Danh sách hình ảnh của tour
                IdUserNavigation = tour.IdUserNavigation != null ? new
                {
                    tour.IdUserNavigation.Id,
                    tour.IdUserNavigation.UserName
                } : null
            };

            return Ok(tourResponse);
        }

        // POST: api/tourapi
        [HttpPost]
        [Authorize]
        public async Task<IActionResult> CreateTour([FromBody] Tour tour)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            tour.ApprovalStatus = "Chờ phê duyệt";
            tour.IsDelete = "N";
            _context.Tours.Add(tour);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetTour), new { id = tour.IdTour }, tour);
        }

        // PUT: api/tourapi/{id}
        [HttpPut("{id}")]
        [Authorize]
        public async Task<IActionResult> UpdateTour(long id, [FromBody] Tour tour)
        {
            if (id != tour.IdTour || !ModelState.IsValid)
            {
                return BadRequest();
            }

            var existingTour = await _context.Tours.FindAsync(id);
            if (existingTour == null)
            {
                return NotFound();
            }

            _context.Entry(existingTour).CurrentValues.SetValues(tour);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        // DELETE: api/tourapi/{id}
        [HttpDelete("{id}")]
        [Authorize]
        public async Task<IActionResult> DeleteTour(long id)
        {
            var tour = await _context.Tours.FindAsync(id);
            if (tour == null)
            {
                return NotFound();
            }

            tour.IsDelete = "Y";
            await _context.SaveChangesAsync();

            return NoContent();
        }

        // GET: api/tourapi/search
        [HttpGet("search")]
        public async Task<IActionResult> SearchTours(
            [FromQuery] string destinationAddress,
            [FromQuery] DateTime? startDate,
            [FromQuery] string tourType)
        {
            var toursQuery = _context.Tours
                .Include(t => t.TourDetails)
                    .ThenInclude(td => td.IdDesNavigation)
                .Include(t => t.IdTypeNavigation)
                .Where(t => t.ApprovalStatus == "Đã phê duyệt" && t.IsDelete == "N");

            if (!string.IsNullOrEmpty(destinationAddress))
            {
                toursQuery = toursQuery.Where(t => t.TourDetails
                    .Any(td => td.IdDesNavigation.Address.Contains(destinationAddress)));
            }

            if (startDate.HasValue)
            {
                toursQuery = toursQuery.Where(t => t.StartDate == startDate);
            }

            if (!string.IsNullOrEmpty(tourType))
            {
                toursQuery = toursQuery.Where(t => t.IdTypeNavigation.Name == tourType);
            }

            var tours = await toursQuery.ToListAsync();
            return Ok(tours);
        }
    }
}