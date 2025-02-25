using Elfie.Serialization;
using Microsoft.AspNetCore.Mvc.Razor;
using System.Globalization;

namespace BookingTour.configservices
{
	public static class confogservices
    {
        public static void registerglogalizationandlocalization(this IServiceCollection services)
        {
            var SupportedCultures = new[]
            {
				  new CultureInfo("vi-VN"),
				    new CultureInfo("en-US"),
           
			};
            var locazationOptions = new RequestLocalizationOptions
            {
                DefaultRequestCulture= new Microsoft.AspNetCore.Localization.RequestCulture("vi-VN"),
                SupportedCultures= SupportedCultures.ToList(),
                SupportedUICultures= SupportedCultures.ToList()
            };

			services.Configure<RequestLocalizationOptions>(options =>
            {
                options.DefaultRequestCulture = locazationOptions.DefaultRequestCulture;
                options.SupportedCultures = locazationOptions.SupportedCultures;
                options.SupportedUICultures = locazationOptions.SupportedCultures;
            });
            services.AddMvc()
                .AddViewLocalization(LanguageViewLocationExpanderFormat.Suffix)
        .AddDataAnnotationsLocalization(options => {
            options.DataAnnotationLocalizerProvider = (type, factory) =>
                factory.Create(typeof(Resource));
        });
        }
    }
}
