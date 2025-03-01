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
using Microsoft.OpenApi.Models;
using System.Configuration;
using Twilio.TwiML.Voice;


var builder = WebApplication.CreateBuilder(args);

// C?u h́nh k?t n?i c? s? d? li?u
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
builder.Services.AddDbContext<YourExistingDbContextName>(options =>
       options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"), sqlOptions =>
       {
           sqlOptions.CommandTimeout(280); // Th?i gian timeout là 180 giây (ho?c giá tr? b?n mu?n)
       }));

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// C?u h́nh Identity
builder.Services.AddIdentity<ApplicationUser, IdentityRole>()
    .AddDefaultTokenProviders()
    .AddDefaultUI()
    .AddEntityFrameworkStores<ApplicationDbContext>();

builder.Services.AddSwaggerGen(options =>
{
    options.EnableAnnotations();
    options.SwaggerDoc("v1", new OpenApiInfo
    {
        Version = "v1",
        Title = "E-Commerce API",
        Description = "An ASP.NET Core Web API for managing E-Commerce website",
        TermsOfService = new Uri("https://example.com/terms"),
        Contact = new OpenApiContact
        {
            Name = "Example Contact",
            Url = new Uri("https://example.com/contact")
        },
        License = new OpenApiLicense
        {
            Name = "Example License",
            Url = new Uri("https://example.com/license")
        }
    });

    options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Name = "Authorization",
        Type = SecuritySchemeType.Http,
        Scheme = "Bearer",
        BearerFormat = "JWT",
        In = ParameterLocation.Header,
        Description = "Nhập token JWT của bạn vào ô bên dưới.\r\n\r\nVí dụ: Bearer 12345abcdef",
    });

    options.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type = ReferenceType.SecurityScheme,
                    Id = "Bearer"
                }
            },
            new string[] {}
        }
    });
});

// C?u h́nh xác th?c v?i Google và Facebook
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

// C?u h́nh SmsService
builder.Services.AddTransient<SmsService>(provider =>
{
    var configuration = provider.GetRequiredService<IConfiguration>();
    var accountSid = configuration["Twilio:AccountSid"];
    var authToken = configuration["Twilio:AuthToken"];
    var twilioPhoneNumber = configuration["Twilio:PhoneNumber"];
    return new SmsService(accountSid, authToken, twilioPhoneNumber);
});

builder.Services.registerglogalizationandlocalization();
// C?u h́nh Razor Pages, Controllers và Views
builder.Services.AddRazorPages();
builder.Services.AddControllersWithViews();
builder.Services.AddSignalR();
builder.Services.AddSignalR(options =>
{
    options.EnableDetailedErrors = true; // B?t thông báo l?i chi ti?t
});
// C?u h́nh Cookie
builder.Services.ConfigureApplicationCookie(options =>
{
    options.LoginPath = $"/Identity/Account/Login";
    options.LogoutPath = $"/Identity/Account/Logout";
    options.AccessDeniedPath = $"/Home/AccessDenied";
});

// C?u h́nh Session
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

app.UseSwagger();
app.UseSwaggerUI(options =>
{
    options.SwaggerEndpoint("/swagger/v1/swagger.json", "My API V1");
    options.RoutePrefix = "swagger"; // Chỉ vào Swagger khi nhập URL trực tiếp
});

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseSession(); // Thêm `app.UseSession()` t?i ?ây ?? kích ho?t Session

app.UseAuthentication();
app.UseAuthorization();
app.MapRazorPages();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Tours}/{action=Index}/{id?}");

app.MapAreaControllerRoute(
    name: "ADMIN",
    areaName: "Admin",
    pattern: "Admin/{controller=Home}/{action=AccessDenied}/{id?}");

app.MapAreaControllerRoute(
    name: "HOST",
    areaName: "Host",
    pattern: "Host/{controller=Home}/{action=AccessDenied}/{id?}");

app.MapControllerRoute(
    name: "chatbot",
    pattern: "chat",
    defaults: new { controller = "Chat", action = "Index" });

app.MapHub<ChatHub>("/chathub");

//app.UseEndpoints(endpoints =>
//{
//    endpoints.MapAreaControllerRoute(
//        name: "ADMIN",
//        areaName: "Admin",
//        pattern: "Admin/{controller=Home}/{action=AccessDenied}/{id?}");

//    endpoints.MapAreaControllerRoute(
//        name: "HOST",
//        areaName: "Host",
//        pattern: "Host/{controller=Home}/{action=AccessDenied}/{id?}");

//    endpoints.MapControllerRoute(
//        name: "default",
//        pattern: "{controller=Tours}/{action=Index}/{id?}");
//    endpoints.MapHub<ChatHub>("/chathub");
//});
//app.UseEndpoints(endpoints =>
//{
//    endpoints.MapControllerRoute(
//        name: "chatbot",
//        pattern: "chat",
//        defaults: new { controller = "Chat", action = "Index" });
//});

app.Run();
