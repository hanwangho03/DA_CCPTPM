using BookingTour.Data;
using BookingTour.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BookingTour.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class InvoiceController : ControllerBase
    {
        private readonly YourExistingDbContextName _context;

        public InvoiceController(YourExistingDbContextName context)
        {
            _context = context;
        }

        // ✅ GET: api/Invoice (Trả về danh sách hóa đơn, không có paymentInvoices)
        [HttpGet]
        public async Task<ActionResult<IEnumerable<InvoiceDTO>>> GetInvoices()
        {
            var invoices = await _context.Invoices
                .Select(i => new InvoiceDTO
                {
                    IdInvoice = i.IdInvoice,
                    Description = i.Description,
                    TotalAmount = i.TotalAmount,
                    BillingDate = i.BillingDate,
                    CreatedAt = i.CreatedAt
                }).ToListAsync();

            return Ok(invoices);
        }

        // ✅ GET: api/Invoice/5 (Lấy hóa đơn theo ID, không có paymentInvoices)
        [HttpGet("{id}")]
        public async Task<ActionResult<InvoiceDTO>> GetInvoice(long id)
        {
            var invoice = await _context.Invoices
                .Where(i => i.IdInvoice == id)
                .Select(i => new InvoiceDTO
                {
                    IdInvoice = i.IdInvoice,
                    Description = i.Description,
                    TotalAmount = i.TotalAmount,
                    BillingDate = i.BillingDate,
                    CreatedAt = i.CreatedAt
                }).FirstOrDefaultAsync();

            if (invoice == null)
            {
                return NotFound();
            }

            return Ok(invoice);
        }

        // ✅ POST: api/Invoice (Tạo mới hóa đơn, không yêu cầu paymentInvoices)
        [HttpPost]
        public async Task<ActionResult<InvoiceDTO>> CreateInvoice(InvoiceDTO invoiceDto)
        {
            var invoice = new Invoice
            {
                Description = invoiceDto.Description,
                TotalAmount = invoiceDto.TotalAmount,
                BillingDate = invoiceDto.BillingDate,
                CreatedAt = DateTime.UtcNow
            };

            _context.Invoices.Add(invoice);
            await _context.SaveChangesAsync();

            var createdInvoiceDto = new InvoiceDTO
            {
                IdInvoice = invoice.IdInvoice,
                Description = invoice.Description,
                TotalAmount = invoice.TotalAmount,
                BillingDate = invoice.BillingDate,
                CreatedAt = invoice.CreatedAt
            };

            return CreatedAtAction(nameof(GetInvoice), new { id = invoice.IdInvoice }, createdInvoiceDto);
        }

        // PUT: api/Invoice/5
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateInvoice(long id, Invoice invoice)
        {
            if (id != invoice.IdInvoice)
            {
                return BadRequest();
            }

            _context.Entry(invoice).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!InvoiceExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // DELETE: api/Invoice/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteInvoice(long id)
        {
            var invoice = await _context.Invoices.FindAsync(id);
            if (invoice == null)
            {
                return NotFound();
            }

            _context.Invoices.Remove(invoice);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool InvoiceExists(long id)
        {
            return _context.Invoices.Any(e => e.IdInvoice == id);
        }
    }
}

