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
public async Task<IActionResult> CreateBooking([FromBody] BookingRequestDTO request)
{
    if (request == null)
    {
        return BadRequest(new { message = "Dữ liệu không hợp lệ" });
    }

    var tour = await _context.Tours.FindAsync(request.TourId);
    if (tour == null)
    {
        return NotFound(new { message = "Tour không tồn tại" });
    }

    var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
    if (userId == null)
    {
        return Unauthorized(new { message = "Vui lòng đăng nhập để đặt tour" });
    }

    // ✅ Tạo hóa đơn (Invoice)
    var newInvoiceId = _context.Invoices.Any() ? _context.Invoices.Max(p => p.IdInvoice) + 1 : 1;
    var invoice = await CreateInvoice(newInvoiceId, request.TotalPrice);

    // ✅ Tạo booking
    var newBookingId = _context.Bookings.Any() ? _context.Bookings.Max(p => p.IdBooking) + 1 : 1;
    var booking = new Booking
    {
        IdBooking = newBookingId,
        IdInvoice = invoice.IdInvoice,
        IdTour = request.TourId,
        CheckInDate = request.CheckInDate,// Ngày khởi hành từ request
        CheckOutDate = DateTime.Now,
        IdHotel = tour.IdHotel,
        IdStatus = 4, // Mặc định "Chưa thanh toán"
        BookingTime = DateTime.Now,
        Id = userId
    };

    _context.Bookings.Add(booking);
    await _context.SaveChangesAsync();

    // ✅ Trả về invoiceId để frontend có thể redirect
    return Ok(new { message = "Đặt tour thành công", invoiceId = invoice.IdInvoice });
}

        [HttpGet("invoice/{id}")]
        public async Task<IActionResult> GetInvoiceById(long id)
        {
            var invoice = await _context.Invoices.FindAsync(id);
            if (invoice == null)
            {
                return NotFound(new { message = "Không tìm thấy hóa đơn" });
            }
            return Ok(invoice);
        }


        [HttpGet("{id}")]
        public async Task<IActionResult> GetBookingById(long id)
        {
            var booking = await _context.Bookings.FindAsync(id);
            if (booking == null)
            {
                return NotFound(new { message = "Không tìm thấy booking" });
            }
            return Ok(booking);
        }

        private async Task<Invoice> CreateInvoice(long id, decimal totalAmount)
        {
            var invoice = new Invoice
            {
                IdInvoice = id,
                Description = "Thanh toán cho tour đã đặt",
                TotalAmount = totalAmount,
                BillingDate = DateTime.Now,
                CreatedAt = DateTime.Now
            };

            _context.Invoices.Add(invoice);
            await _context.SaveChangesAsync();

            return invoice;
        }
    }
}
