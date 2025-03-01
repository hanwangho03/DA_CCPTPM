using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BookingTour.Data;
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
    public class CommentAPI : ControllerBase
    {
        private readonly YourExistingDbContextName _context; // Thay bằng tên thực tế, ví dụ AppDbContext

        public CommentAPI(YourExistingDbContextName context)
        {
            _context = context;
        }

        // GET: api/commentapi
        [HttpGet]
        public async Task<IActionResult> GetComments()
        {
            var comments = await _context.Comments
                .Select(c => new
                {
                    c.IdTour,
                    c.Id,
                    c.Content,
                    c.CommentDate,
                    c.Reply,
                    c.IsHidden,
                    c.Rating,
                    UserName = c.IdNavigation.UserName, // Chỉ lấy UserName từ AspNetUser
                    TourName = c.IdTourNavigation.Name  // Chỉ lấy Name từ Tour
                })
                .ToListAsync();

            return Ok(comments);
        }

        // GET: api/commentapi/tour/{tourId}
        [HttpGet("tour/{tourId}")]
        public async Task<IActionResult> GetCommentsByTourId(long tourId)
        {
            var comments = await _context.Comments
                .Where(c => c.IdTour == tourId)
                .Select(c => new
                {
                    c.IdTour,
                    c.Id,
                    c.Content,
                    c.CommentDate,
                    c.Reply,
                    c.IsHidden,
                    c.Rating,
                    UserName = c.IdNavigation.UserName,
                    TourName = c.IdTourNavigation.Name
                })
                .ToListAsync();

            if (!comments.Any())
            {
                return NotFound(new { message = $"No comments found for Tour ID {tourId}" });
            }

            return Ok(comments);
        }

        // GET: api/commentapi/{idTour}/{id}
        [HttpGet("{idTour}/{id}")]
        public async Task<IActionResult> GetComment(long idTour, string id)
        {
            var comment = await _context.Comments
                .Where(c => c.IdTour == idTour && c.Id == id)
                .Select(c => new
                {
                    c.IdTour,
                    c.Id,
                    c.Content,
                    c.CommentDate,
                    c.Reply,
                    c.IsHidden,
                    c.Rating,
                    UserName = c.IdNavigation.UserName,
                    TourName = c.IdTourNavigation.Name
                })
                .FirstOrDefaultAsync();

            if (comment == null)
            {
                return NotFound(new { message = $"Comment with Tour ID {idTour} and User ID {id} not found" });
            }

            return Ok(comment);
        }

        // POST: api/commentapi
        [HttpPost]
        [Authorize] // Yêu cầu đăng nhập
        public async Task<IActionResult> CreateComment([FromBody] Comment comment)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            // Kiểm tra Tour và User có tồn tại không
            var tourExists = await _context.Tours.AnyAsync(t => t.IdTour == comment.IdTour);
            var userExists = await _context.AspNetUsers.AnyAsync(u => u.Id == comment.Id); // Giả định bảng Users là AspNetUsers

            if (!tourExists)
            {
                return BadRequest(new { message = "Invalid Tour ID" });
            }
            if (!userExists)
            {
                return BadRequest(new { message = "Invalid User ID" });
            }

            // Gán ngày bình luận nếu không được cung cấp
            comment.CommentDate ??= DateTime.UtcNow;

            _context.Comments.Add(comment);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetComment), new { idTour = comment.IdTour, id = comment.Id }, comment);
        }

        // PUT: api/commentapi/{idTour}/{id}
        [HttpPut("{idTour}/{id}")]
        [Authorize]
        public async Task<IActionResult> UpdateComment(long idTour, string id, [FromBody] Comment comment)
        {
            if (idTour != comment.IdTour || id != comment.Id || !ModelState.IsValid)
            {
                return BadRequest(new { message = "Invalid request data" });
            }

            var existingComment = await _context.Comments
                .FirstOrDefaultAsync(c => c.IdTour == idTour && c.Id == id);

            if (existingComment == null)
            {
                return NotFound(new { message = $"Comment with Tour ID {idTour} and User ID {id} not found" });
            }

            // Cập nhật các giá trị
            existingComment.Content = comment.Content;
            existingComment.CommentDate = comment.CommentDate;
            existingComment.Reply = comment.Reply;
            existingComment.IsHidden = comment.IsHidden;
            existingComment.Rating = comment.Rating;

            _context.Entry(existingComment).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            return NoContent();
        }

        // DELETE: api/commentapi/{idTour}/{id}
        [HttpDelete("{idTour}/{id}")]
        [Authorize]
        public async Task<IActionResult> DeleteComment(long idTour, string id)
        {
            var comment = await _context.Comments
                .FirstOrDefaultAsync(c => c.IdTour == idTour && c.Id == id);

            if (comment == null)
            {
                return NotFound(new { message = $"Comment with Tour ID {idTour} and User ID {id} not found" });
            }

            _context.Comments.Remove(comment);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}