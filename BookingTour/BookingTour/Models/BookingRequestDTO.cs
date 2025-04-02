namespace BookingTour.Models
{
    public class BookingRequestDTO
    {
        public long TourId { get; set; }
        public int Quantity { get; set; }
        public decimal TotalPrice { get; set; }
        public DateTime CheckInDate { get; set; }
    }
}
