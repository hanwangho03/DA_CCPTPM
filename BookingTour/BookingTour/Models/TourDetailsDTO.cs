namespace BookingTour.Models
{
    public class TourDetailCreateDto
    {
        public long IdTour { get; set; }
        public long IdDes { get; set; }
        public string? Itinerary { get; set; }
        public DateTime? Date { get; set; }
    }
}