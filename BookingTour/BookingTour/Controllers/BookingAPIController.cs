using BookingTour.Models;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BookingTour.Data;
using Microsoft.EntityFrameworkCore;

namespace BookingTour.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize] // Bắt buộc đăng nhập mới gọi API này
    public class BookingController : ControllerBase
    {
        private readonly YourExistingDbContextName _context;

        public BookingController(YourExistingDbContextName context)
        {
            _context = context;
        }

        // ✅ API Đặt Tour: POST /api/Booking
        [HttpPost]
        public async Task<ActionResult> CreateBooking([FromBody] BookingRequestDTO request)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (userId == null)
            {
                return Unauthorized(new { message = "Vui lòng đăng nhập để đặt tour." });
            }

            var tour = await _context.Tours.FindAsync(request.TourId);
            if (tour == null)
            {
                return NotFound(new { message = "Tour không tồn tại." });
            }

            // ✅ Tạo hóa đơn
            var invoice = new Invoice
            {
                IdInvoice = (_context.Invoices.Any() ? _context.Invoices.Max(i => i.IdInvoice) : 0) + 1,
                TotalAmount = request.TotalPrice,
                BillingDate = DateTime.UtcNow,
                CreatedAt = DateTime.UtcNow
            };
            _context.Invoices.Add(invoice);
            await _context.SaveChangesAsync();

            // ✅ Tạo booking
            var booking = new Booking
            {
                IdBooking = (_context.Bookings.Any() ? _context.Bookings.Max(b => b.IdBooking) : 0) + 1,
                IdTour = request.TourId,
                CheckInDate = DateTime.UtcNow,
                CheckOutDate = DateTime.UtcNow.AddDays(1),
                IdHotel = tour.IdHotel,
                IdStatus = 4, // Trạng thái "Chưa thanh toán"
                BookingTime = DateTime.UtcNow,
                Id = userId,
                IdInvoice = invoice.IdInvoice
            };
            _context.Bookings.Add(booking);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetBooking), new { id = booking.IdBooking }, new
            {
                booking.IdBooking,
                booking.IdTour,
                booking.CheckInDate,
                booking.CheckOutDate,
                booking.IdStatus,
                booking.BookingTime,
                booking.IdInvoice
            });
        }

        // ✅ API Lấy thông tin Booking theo ID: GET /api/Booking/{id}
        [HttpGet("{id}")]
        public async Task<ActionResult> GetBooking(long id)
        {
            var booking = await _context.Bookings
                .Select(b => new
                {
                    b.IdBooking,
                    b.IdTour,
                    b.CheckInDate,
                    b.CheckOutDate,
                    b.IdStatus,
                    b.BookingTime,
                    b.IdInvoice
                })
                .FirstOrDefaultAsync(b => b.IdBooking == id);

            if (booking == null)
            {
                return NotFound(new { message = "Không tìm thấy booking." });
            }

            return Ok(booking);
        }
    }
}
