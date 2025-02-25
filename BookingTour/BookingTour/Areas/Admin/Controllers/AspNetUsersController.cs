using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BookingTour.Data;
using BookingTour.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;

namespace BookingTour.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = CD.Role_Admin)]
    public class AspNetUsersController : Controller
    {
        private readonly YourExistingDbContextName _context;
        private readonly UserManager<ApplicationUser> _userManager;
        public AspNetUsersController(YourExistingDbContextName context, UserManager<ApplicationUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: Admin/AspNetUsers
        public async Task<IActionResult> Index(int page = 1, string searchTerm = "")
        {
            const int pageSize = 6; // Số bản ghi mỗi trang

            // Lấy danh sách người dùng và áp dụng từ khóa tìm kiếm nếu có, đồng thời kiểm tra PhoneNumberConfirmed == false
            var query = _context.AspNetUsers
                .Where(u => (string.IsNullOrEmpty(searchTerm) || u.fullname.Contains(searchTerm)) && u.PhoneNumberConfirmed == false)
                .OrderBy(u => u.fullname);

            // Tính tổng số bản ghi
            var totalUsers = await query.CountAsync();

            // Tính tổng số trang
            var totalPages = (int)Math.Ceiling(totalUsers / (double)pageSize);

            // Lấy các bản ghi cho trang hiện tại
            var users = await query
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();

            // Gửi thông tin đến view
            ViewBag.CurrentPage = page;
            ViewBag.TotalPages = totalPages;
            ViewBag.PageSize = pageSize;
            ViewBag.SearchTerm = searchTerm;

            return View(users);
        }



        // GET: Admin/AspNetUsers/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var aspNetUser = await _context.AspNetUsers
                .FirstOrDefaultAsync(m => m.Id == id);
            if (aspNetUser == null)
            {
                return NotFound();
            }

            return View(aspNetUser);
        }

        // GET: Admin/AspNetUsers/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admin/AspNetUsers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount")] AspNetUser aspNetUser)
        {
            if (ModelState.IsValid)
            {

                _context.Add(aspNetUser);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(aspNetUser);
        }

        // GET: Admin/AspNetUsers/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var aspNetUser = await _context.AspNetUsers.FindAsync(id);
            if (aspNetUser == null)
            {
                return NotFound();
            }
            return View(aspNetUser);
        }

        // POST: Admin/AspNetUsers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        public async Task<IActionResult> Editdi(string id, string userName, string fullName, string phoneNumber, string address, string email, string age)
        {
            // Lấy người dùng từ UserManager
            var userToUpdate = await _userManager.FindByIdAsync(id);
            if (userToUpdate == null)
            {
                TempData["ErrorMessage"] = "Không tìm thấy người dùng!";
                return RedirectToAction(nameof(Index));
            }

            // Cập nhật thông tin người dùng
            userToUpdate.UserName = userName;
            userToUpdate.fullname = fullName;
            userToUpdate.PhoneNumber = phoneNumber;
            userToUpdate.Address = address;
            userToUpdate.Email = email;
            userToUpdate.Age = age;

            // Cập nhật người dùng vào cơ sở dữ liệu
            var result = await _userManager.UpdateAsync(userToUpdate);

            if (result.Succeeded)
            {
                TempData["SuccessMessage"] = "Cập nhật thành công!";
                return RedirectToAction(nameof(Index)); // Trở lại danh sách người dùng
            }
            else
            {
                // Log các lỗi chi tiết
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                    // Log lỗi hoặc kiểm tra Console/Debug để xem chi tiết
                    Console.WriteLine($"Error: {error.Description}");
                }
                TempData["ErrorMessage"] = "Có lỗi xảy ra khi cập nhật thông tin.";
                return RedirectToAction(nameof(Index)); // Hiển thị lại form với thông báo lỗi
            }
        }




        // GET: Admin/AspNetUsers/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var aspNetUser = await _context.AspNetUsers
                .FirstOrDefaultAsync(m => m.Id == id);
            if (aspNetUser == null)
            {
                return NotFound();
            }

            return View(aspNetUser);
        }

        // POST: Admin/AspNetUsers/Delete/5
        [HttpPost]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            try
            {
                // 1. Tìm người dùng bằng id
                var aspNetUser = await _context.AspNetUsers.FindAsync(id);
                if (aspNetUser == null)
                {
                    TempData["ErrorMessage"] = "Không tìm thấy người dùng!";
                    return RedirectToAction(nameof(Index));
                }

                // 2. Nếu cần khóa tài khoản, bạn có thể set LockoutEnd
                aspNetUser.PhoneNumberConfirmed = true; // Thời gian khóa tài khoản (hoặc có thể set null nếu bạn muốn mở khóa)

                // 3. Cập nhật lại tài khoản
                _context.AspNetUsers.Update(aspNetUser);


                // 5. Lưu các thay đổi vào cơ sở dữ liệu
                await _context.SaveChangesAsync();

                // 6. Hiển thị thông báo thành công
                TempData["SuccessMessage"] = "Tài khoản đã được xóa thành công!";
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {
                // 7. Xử lý lỗi nếu có
                TempData["ErrorMessage"] = $"Có lỗi xảy ra: {ex.Message}";
                return RedirectToAction(nameof(Index));
            }
        }



        private bool AspNetUserExists(string id)
        {
            return _context.AspNetUsers.Any(e => e.Id == id);
        }
        public async Task<IActionResult> LockAccount(string id)
        {
            var user = await _context.AspNetUsers.FindAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            user.LockoutEnd = DateTimeOffset.MaxValue; // Khóa tài khoản
            user.LockoutEnabled = true;

            _context.Update(user);
            await _context.SaveChangesAsync();
            TempData["SuccessMessage"] = "Tài khoản đã được khóa thành công!";
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> UnlockAccount(string id)
        {
            var user = await _context.AspNetUsers.FindAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            user.LockoutEnd = null; // Mở khóa tài khoản
            user.LockoutEnabled = false;

            _context.Update(user);
            await _context.SaveChangesAsync();
            TempData["SuccessMessage"] = "Tài khoản đã được mở khóa thành công!";
            return RedirectToAction(nameof(Index));
        }

    }
}
