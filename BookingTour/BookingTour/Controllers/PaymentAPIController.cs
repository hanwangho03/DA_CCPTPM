using BookingTour.Data;
using BookingTour.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace BookingTour.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PaymentAPIController : ControllerBase
    {
        private readonly VnpayService _vnpayService;
        private readonly YourExistingDbContextName _context;
        public PaymentAPIController(VnpayService vnpayService, YourExistingDbContextName context)
        {
            _vnpayService = vnpayService;
            _context = context;
        }

        // ✅ API Lấy Hóa Đơn
        [HttpGet("invoice/{id}")]
        public IActionResult GetInvoice(int id)
        {
            var invoice = _context.Invoices.FirstOrDefault(i => i.IdInvoice == id);
            if (invoice == null)
            {
                return NotFound(new { message = "Không tìm thấy hóa đơn!" });
            }
            return Ok(invoice);
        }

        // ✅ API Tạo Thanh Toán
        [HttpPost("payment")]
        public IActionResult CreatePayment([FromBody] PaymentRequest request)
        {
            var invoice = _context.Invoices.FirstOrDefault(i => i.IdInvoice == request.Id);
            if (invoice == null)
            {
                return BadRequest(new { message = "Không tìm thấy hóa đơn!" });
            }

            var paymentUrl = _vnpayService.CreatePaymentUrl(HttpContext, invoice);

            return Ok(new { url = paymentUrl });
        }

        // ✅ API Xử lý Callback từ VNPAY
        [HttpGet("callback")]
        public IActionResult PaymentCallback()
        {
            var response = _vnpayService.PaymentExecute(Request.Query);

            if (response == null || response.VnPayResponseCode != "00")
            {
                return Redirect("/payment-failure");
            }

            var invoice = _context.Invoices.FirstOrDefault(i => i.IdInvoice == response.OrderDescription);
            if (invoice == null)
            {
                return Redirect("/payment-failure");
            }

            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var payment = new Payment
            {
                IdPayment = _context.Payments.Any() ? _context.Payments.Max(p => p.IdPayment) + 1 : 1,
                Date = DateTime.Now,
                Method = response.PaymentMethod,
                Amount = invoice.TotalAmount,
                Status = "Completed",
                IsRefunded = "N",
                Id = userId
            };

            _context.Payments.Add(payment);
            _context.SaveChanges();

            var paymentInvoice = new PaymentInvoice
            {
                IdPayment = payment.IdPayment,
                IdInvoice = invoice.IdInvoice,
                PaidAmount = invoice.TotalAmount,
                PaymentDate = DateTime.Now,
                Status = "Completed"
            };

            _context.PaymentInvoices.Add(paymentInvoice);
            _context.SaveChanges();

            return Redirect("/payment-success");
        }
    }
}
