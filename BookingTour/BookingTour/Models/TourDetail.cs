using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace BookingTour.Models;

public partial class TourDetail
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public long ID{ get; set; } // Khóa chính mới (tự động tăng)

    public long IdTour { get; set; }

    public long IdDes { get; set; }

    public string? Itinerary { get; set; }

    public DateTime? Date { get; set; }

    public virtual Destination IdDesNavigation { get; set; }
 
    public virtual Tour IdTourNavigation { get; set; } = null!;
}
