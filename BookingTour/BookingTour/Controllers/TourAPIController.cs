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
                .Include(t => t.IdHotelNavigation)
                .Include(t => t.IdTransNavigation)
                .Include(t => t.IdTypeNavigation)
                .Where(t => t.ApprovalStatus == "Đã phê duyệt" && t.IsDelete == "N");

            int totalTours = await toursQuery.CountAsync();
            var tours = await toursQuery
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();

            var response = new
            {
                TotalItems = totalTours,
                TotalPages = (int)Math.Ceiling((double)totalTours / pageSize),
                CurrentPage = page,
                PageSize = pageSize,
                Data = tours
            };

            return Ok(response);
        }

        // GET: api/tourapi/{id}
        [HttpGet("{id}")]
        public async Task<IActionResult> GetTour(long id)
        {
            var tour = await _context.Tours
                .Include(t => t.IdHotelNavigation)
                .Include(t => t.IdTransNavigation)
                .Include(t => t.IdTypeNavigation)
                .Include(t => t.Comments)
                .Include(t => t.UsersFavoriteTours)
                .FirstOrDefaultAsync(t => t.IdTour == id);

            if (tour == null)
            {
                return NotFound();
            }

            var images = await _context1.Images.Where(i => i.IdTour == tour.IdTour).ToListAsync();
            tour.Images = images; // Giả sử tên thuộc tính đã được sửa thành Images trong model Tour

            return Ok(tour);
        }

        // POST: api/tourapi
        [HttpPost]
        [Authorize] // Yêu cầu đăng nhập
        public async Task<IActionResult> CreateTour([FromBody] Tour tour)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            tour.ApprovalStatus = "Chờ phê duyệt"; // Mặc định khi tạo
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

            tour.IsDelete = "Y"; // Soft delete
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