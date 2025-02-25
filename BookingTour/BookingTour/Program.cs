using BookingTour.Areas.Admin.Controllers;
using BookingTour.configservices;
using BookingTour.Data;
using BookingTour.Hubs;
using BookingTour.Models;
using Google.Api;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using System.Configuration;
using Twilio.TwiML.Voice;


var builder = WebApplication.CreateBuilder(args);

// C?u h�nh k?t n?i c? s? d? li?u
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
builder.Services.AddDbContext<YourExistingDbContextName>(options =>
       options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"), sqlOptions =>
       {
           sqlOptions.CommandTimeout(280); // Th?i gian timeout l� 180 gi�y (ho?c gi� tr? b?n mu?n)
       }));

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// C?u h�nh Identity
builder.Services.AddIdentity<ApplicationUser, IdentityRole>()
    .AddDefaultTokenProviders()
    .AddDefaultUI()
    .AddEntityFrameworkStores<ApplicationDbContext>();

// C?u h�nh x�c th?c v?i Google v� Facebook
builder.Services.AddAuthentication()
    .AddGoogle(options =>
    {
        options.ClientId = builder.Configuration["Authentication:Google:ClientId"];
        options.ClientSecret = builder.Configuration["Authentication:Google:ClientSecret"];
    })
    .AddFacebook(options =>
    {
        options.AppId = builder.Configuration["Authentication:Facebook:AppId"];
        options.AppSecret = builder.Configuration["Authentication:Facebook:AppSecret"];
        options.CallbackPath = "/signin-facebook";
    });

// C?u h�nh SmsService
builder.Services.AddTransient<SmsService>(provider =>
{
    var configuration = provider.GetRequiredService<IConfiguration>();
    var accountSid = configuration["Twilio:AccountSid"];
    var authToken = configuration["Twilio:AuthToken"];
    var twilioPhoneNumber = configuration["Twilio:PhoneNumber"];
    return new SmsService(accountSid, authToken, twilioPhoneNumber);
});

builder.Services.registerglogalizationandlocalization();
// C?u h�nh Razor Pages, Controllers v� Views
builder.Services.AddRazorPages();
builder.Services.AddControllersWithViews();
builder.Services.AddSignalR();
builder.Services.AddSignalR(options =>
{
    options.EnableDetailedErrors = true; // B?t th�ng b�o l?i chi ti?t
});
// C?u h�nh Cookie
builder.Services.ConfigureApplicationCookie(options =>
{
    options.LoginPath = $"/Identity/Account/Login";
    options.LogoutPath = $"/Identity/Account/Logout";
    options.AccessDeniedPath = $"/Home/AccessDenied";
});

// C?u h�nh Session
builder.Services.AddDistributedMemoryCache();
builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);
    options.Cookie.HttpOnly = true;
    options.Cookie.IsEssential = true;
});

builder.Services.AddSingleton<IVnPayService, VnpayService>();
builder.Services.AddScoped<VnpayService>();

var app = builder.Build();
var localizationOptions = app.Services.GetService<IOptions<RequestLocalizationOptions>>().Value;
app.UseRequestLocalization(localizationOptions);
// Configure the HTTP request pipeline
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseSession(); // Th�m `app.UseSession()` t?i ?�y ?? k�ch ho?t Session

app.UseAuthentication();
app.UseAuthorization();

app.UseEndpoints(endpoints =>
{
    endpoints.MapAreaControllerRoute(
        name: "ADMIN",
        areaName: "Admin",
        pattern: "Admin/{controller=Home}/{action=AccessDenied}/{id?}");

    endpoints.MapAreaControllerRoute(
        name: "HOST",
        areaName: "Host",
        pattern: "Host/{controller=Home}/{action=AccessDenied}/{id?}");

    endpoints.MapControllerRoute(
        name: "default",
        pattern: "{controller=Tours}/{action=Index}/{id?}");
    endpoints.MapHub<ChatHub>("/chathub");
});
app.UseEndpoints(endpoints =>
{
    endpoints.MapControllerRoute(
        name: "chatbot",
        pattern: "chat",
        defaults: new { controller = "Chat", action = "Index" });
});
app.MapRazorPages();

app.Run();
