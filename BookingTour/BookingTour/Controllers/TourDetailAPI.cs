using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BookingTour.Data; // Giả định namespace cho DbContext
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
    public class TourDetailAPIController : ControllerBase
    {
        private readonly YourExistingDbContextName _context; // Thay YourExistingDbContextName bằng tên thực tế, ví dụ AppDbContext

        public TourDetailAPIController(YourExistingDbContextName context)
        {
            _context = context;
        }

        // GET: api/tourdetailapi
        [HttpGet]
        public async Task<IActionResult> GetTourDetails()
        {
            var tourDetails = await _context.TourDetails
                .Select(td => new
                {
                    td.IdTour,
                    td.IdDes,
                    td.Itinerary,
                    td.Date,
                    DestinationName = td.IdDesNavigation.Name, // Chỉ lấy Name từ Destination
                    DestinationAddress = td.IdDesNavigation.Address
                })
                .ToListAsync();

            return Ok(tourDetails);
        }

        // GET: api/tourdetailapi/tour/{tourId}
        [HttpGet("tour/{tourId}")]
        public async Task<IActionResult> GetTourDetailsByTourId(long tourId)
        {
            var tourDetails = await _context.TourDetails
                .Where(td => td.IdTour == tourId)
                .Select(td => new
                {
                    td.IdTour,
                    td.IdDes,
                    td.Itinerary,
                    td.Date,
                    DestinationName = td.IdDesNavigation.Name,
                    DestinationAddress = td.IdDesNavigation.Address
                })
                .ToListAsync();

            if (!tourDetails.Any())
            {
                return NotFound(new { message = $"No tour details found for Tour ID {tourId}" });
            }

            return Ok(tourDetails);
        }

        // GET: api/tourdetailapi/{idTour}/{idDes}
        [HttpGet("{idTour}/{idDes}")]
        public async Task<IActionResult> GetTourDetail(long idTour, long idDes)
        {
            var tourDetail = await _context.TourDetails
                .Where(td => td.IdTour == idTour && td.IdDes == idDes)
                .Select(td => new
                {
                    td.IdTour,
                    td.IdDes,
                    td.Itinerary,
                    td.Date,
                    DestinationName = td.IdDesNavigation.Name,
                    DestinationAddress = td.IdDesNavigation.Address
                })
                .FirstOrDefaultAsync();

            if (tourDetail == null)
            {
                return NotFound(new { message = $"Tour detail with Tour ID {idTour} and Destination ID {idDes} not found" });
            }

            return Ok(tourDetail);
        }

        // POST: api/tourdetailapi
        [HttpPost]
        [Authorize] // Yêu cầu đăng nhập
        public async Task<IActionResult> CreateTourDetail([FromBody] TourDetailCreateDto tourDetailDto)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            // Kiểm tra Tour và Destination có tồn tại không
            var tourExists = await _context.Tours.AnyAsync(t => t.IdTour == tourDetailDto.IdTour);
            var desExists = await _context.Destinations.AnyAsync(d => d.IdDes == tourDetailDto.IdDes);

            if (!tourExists)
            {
                return BadRequest(new { message = "Invalid Tour ID" });
            }
            if (!desExists)
            {
                return BadRequest(new { message = "Invalid Destination ID" });
            }

            // Tạo đối tượng TourDetail từ DTO
            var tourDetail = new TourDetail
            {
                IdTour = tourDetailDto.IdTour,
                IdDes = tourDetailDto.IdDes,
                Itinerary = tourDetailDto.Itinerary,
                Date = tourDetailDto.Date ?? DateTime.UtcNow // Gán giá trị mặc định nếu Date là NULL
            };

            _context.TourDetails.Add(tourDetail);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetTourDetail), new { idTour = tourDetail.IdTour, idDes = tourDetail.IdDes }, tourDetail);
        }

        // PUT: api/tourdetailapi/{idTour}/{idDes}
        [HttpPut("{idTour}/{idDes}")]
        [Authorize]
        public async Task<IActionResult> UpdateTourDetail(long idTour, long idDes, [FromBody] TourDetail tourDetail)
        {
            if (idTour != tourDetail.IdTour || idDes != tourDetail.IdDes || !ModelState.IsValid)
            {
                return BadRequest(new { message = "Invalid request data" });
            }

            var existingTourDetail = await _context.TourDetails
                .FirstOrDefaultAsync(td => td.IdTour == idTour && td.IdDes == idDes);

            if (existingTourDetail == null)
            {
                return NotFound(new { message = $"Tour detail with Tour ID {idTour} and Destination ID {idDes} not found" });
            }

            // Cập nhật giá trị
            existingTourDetail.Itinerary = tourDetail.Itinerary;
            existingTourDetail.Date = tourDetail.Date;

            _context.Entry(existingTourDetail).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            return NoContent();
        }

        // DELETE: api/tourdetailapi/{idTour}/{idDes}
        [HttpDelete("{idTour}/{idDes}")]
        [Authorize]
        public async Task<IActionResult> DeleteTourDetail(long idTour, long idDes)
        {
            var tourDetail = await _context.TourDetails
                .FirstOrDefaultAsync(td => td.IdTour == idTour && td.IdDes == idDes);

            if (tourDetail == null)
            {
                return NotFound(new { message = $"Tour detail with Tour ID {idTour} and Destination ID {idDes} not found" });
            }

            _context.TourDetails.Remove(tourDetail);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}