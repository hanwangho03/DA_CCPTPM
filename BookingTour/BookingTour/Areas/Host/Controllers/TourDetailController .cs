using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BookingTour.Data;
using BookingTour.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;

namespace BookingTour.Controllers
{
    [Route("api/tourdetails")]
    [ApiController]
    public class TourDetailController : ControllerBase
    {
        private readonly YourExistingDbContextName _context;

        public TourDetailController(YourExistingDbContextName context)
        {
            _context = context;
        }

        // GET: api/tourdetails - Lấy tất cả danh sách tour details
        [HttpGet]
        public async Task<IActionResult> GetAllTourDetails()
        {
            var tourDetails = await _context.TourDetails
                .Include(td => td.IdDesNavigation) // Load thông tin địa điểm
                .Select(td => new
                {
                    td.ID,
                    td.IdTour,
                    td.IdDes,
                    td.Itinerary,
                    td.Date,
                    DestinationName = td.IdDesNavigation.Address,
                    DestinationAddress = td.IdTourNavigation.Name
                })
                .ToListAsync();

            return Ok(tourDetails);
        }
        [HttpGet("{idTour}/{id}/{idDes}")]
        public async Task<IActionResult> GetTourDetail(int idTour, int id, int idDes)
        {
            var tourDetail = await _context.TourDetails
                .FirstOrDefaultAsync(t => t.IdTour == idTour && t.ID == id && t.IdDes == idDes);

            if (tourDetail == null)
            {
                return NotFound();
            }

            return Ok(tourDetail);
        }

        // GET: api/tourdetails/{id} - Lấy tour detail theo ID
        [HttpGet("{id}")]
        public async Task<IActionResult> GetTourDetailById(long id)
        {
            var tourDetail = await _context.TourDetails
                .Include(td => td.IdDesNavigation)
                .Where(td => td.ID == id)
                .Select(td => new
                {
                    td.ID,
                    td.IdTour,
                    td.IdDes,
                    td.Itinerary,
                    td.Date,
                    DestinationName = td.IdDesNavigation.Name,
                    DestinationAddress = td.IdDesNavigation.Address
                })
                .FirstOrDefaultAsync();

            if (tourDetail == null)
                return NotFound(new { message = "TourDetail không tồn tại" });

            return Ok(tourDetail);
        }
        [HttpPost]
        [Authorize]
        public async Task<IActionResult> CreateTourDetail([FromBody] TourDetailCreateDto tourDetailDto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            try
            {
                var tourExists = await _context.Tours.AnyAsync(t => t.IdTour == tourDetailDto.IdTour);
                var desExists = await _context.Destinations.AnyAsync(d => d.IdDes == tourDetailDto.IdDes);

                if (!tourExists)
                    return BadRequest(new { message = "Invalid Tour ID" });
                if (!desExists)
                    return BadRequest(new { message = "Invalid Destination ID" });

                // Kiểm tra sự tồn tại của TourDetail với cặp khóa IdTour, IdDes
                var existingTourDetail = await _context.TourDetails
                    .AsNoTracking()  // Không theo dõi đối tượng này
                    .FirstOrDefaultAsync(t => t.IdTour == tourDetailDto.IdTour && t.IdDes == tourDetailDto.IdDes);


                var tourDetail = new TourDetail
                {
                    IdTour = tourDetailDto.IdTour,
                    IdDes = tourDetailDto.IdDes,
                    Itinerary = tourDetailDto.Itinerary,
                    Date = tourDetailDto.Date ?? DateTime.UtcNow
                };

                _context.TourDetails.Add(tourDetail);
                await _context.SaveChangesAsync();

                return CreatedAtAction(nameof(GetTourDetail), new { idTour = tourDetail.IdTour, idDes = tourDetail.IdDes }, tourDetail);
            }
            catch (DbUpdateException dbEx)
            {
                return StatusCode(500, new { message = "Database error occurred", details = dbEx.InnerException?.Message ?? dbEx.Message });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = "An error occurred", details = ex.Message });
            }
        }



        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateTourDetail(int id, [FromBody] TourDetailCreateDto updatedTourDetail)
        {
            var existingTourDetail = await _context.TourDetails
                .Where(t => t.ID == id) // Chỉ lấy đúng bản ghi theo ID
                .FirstOrDefaultAsync();

            if (existingTourDetail == null)
            {
                return NotFound("Không tìm thấy dữ liệu.");
            }

            // Chỉ cập nhật nếu giá trị được gửi lên không null
            if (!string.IsNullOrEmpty(updatedTourDetail.Itinerary))
            {
                existingTourDetail.Itinerary = updatedTourDetail.Itinerary;
            }

            if (updatedTourDetail.Date.HasValue)
            {
                existingTourDetail.Date = updatedTourDetail.Date.Value;
            }

            try
            {
                // Chỉ đánh dấu bản ghi hiện tại là đã thay đổi
                _context.TourDetails.Update(existingTourDetail);
                await _context.SaveChangesAsync();

                return Ok(existingTourDetail);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Lỗi khi cập nhật TourDetail: {ex.InnerException?.Message}");
                return StatusCode(500, "Lỗi hệ thống");
            }
        }







        // DELETE: api/tourdetails/{id} - Xóa TourDetail
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTourDetail(int id)
        {
            var existingTourDetail = await _context.TourDetails
              .FirstOrDefaultAsync(t => t.ID == id);
            if (existingTourDetail == null)
                return NotFound(new { message = "TourDetail không tồn tại" });

            _context.TourDetails.Remove(existingTourDetail);
            await _context.SaveChangesAsync();

            return Ok(new { message = "Xóa thành công" });
        }
    }
}