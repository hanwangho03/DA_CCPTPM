namespace BookingTour.Models
{
    public class InvoiceDTO
    {
        public long IdInvoice { get; set; }
        public string? Description { get; set; }
        public decimal? TotalAmount { get; set; }
        public DateTime? BillingDate { get; set; }
        public DateTime? CreatedAt { get; set; }
    }
}
