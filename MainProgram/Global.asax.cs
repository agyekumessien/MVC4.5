using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.WebPages;

namespace MainProgram
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {

            UnityConfig.RegisterComponents();

           //AppDbInitializer.Seed(); // <-- Here it is

            AreaRegistration.RegisterAllAreas();
            var displayModes = DisplayModeProvider.Instance.Modes;
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            InitializeBundles();

            BundleConfig.RegisterBundles(BundleTable.Bundles);
            initializeDisplayModeProviders();
        }

        protected void InitializeBundles()
        {
            var phoneScripts = new ScriptBundle("~/bundles/MobileJS")
            .Include("~/Scripts/jquery.mobile-1.*",
            "~/Scripts/jquery-1.*");

            var phoneStyles = new StyleBundle("~/bundles/MobileCSS")
                              .Include("~/Content/jquery.mobile-1.4.5.min.css",
                              "~/Content/jquery.mobile.structure-1.4.5.min.css",
                              "~/Content/jquery.mobile.theme-1.4.5.min.css");

           // BundleTable.Bundles.IgnoreList.Clear();
          //  BundleTable.Bundles.Add(phoneStyles);
          //  BundleTable.Bundles.Add(phoneScripts);



        }
        protected void initializeDisplayModeProviders()
        {
            var phone = new DefaultDisplayMode("Phone")
            {
                ContextCondition = ctx => ctx.GetOverriddenUserAgent() != null && ctx.GetOverriddenUserAgent().Contains("Iphone")
            };
            var tablet = new DefaultDisplayMode("Tablet")

            {
                ContextCondition = ctx => ctx.GetOverriddenUserAgent() != null && ctx.GetOverriddenUserAgent().Contains("IPad")
            };
            DisplayModeProvider.Instance.Modes.Insert(0, phone);
            DisplayModeProvider.Instance.Modes.Insert(1, tablet);



            DisplayModeProvider.Instance.Modes.Insert(1, new DefaultDisplayMode("Mobile")
                {
                    ContextCondition = context =>
         context.GetOverriddenBrowser().IsMobileDevice
                });




            DisplayModeProvider.Instance.Modes.Insert(0, new DefaultDisplayMode("Android")
                {
                    ContextCondition = (context => context.GetOverriddenUserAgent().IndexOf
                        ("Android", StringComparison.OrdinalIgnoreCase) >= 0)
                });

            DisplayModeProvider.Instance.Modes.Insert(0, new DefaultDisplayMode("iPhone")
            {
                ContextCondition = (context => context.GetOverriddenUserAgent().IndexOf
                    ("iPhone", StringComparison.OrdinalIgnoreCase) >= 0)
            });

            DisplayModeProvider.Instance.Modes.Insert(0, new DefaultDisplayMode("Mobile")
            {
                ContextCondition = (context => context.GetOverriddenUserAgent().IndexOf
                   ("IEMobile", StringComparison.OrdinalIgnoreCase) >= 0)
            });
        }
             public override string GetVaryByCustomString(HttpContext context, string custom)
                {
                if (string.Equals(custom, "isMobileDevice", StringComparison.OrdinalIgnoreCase))
                   return context.Request.Browser.IsMobileDevice.ToString();

                    return base.GetVaryByCustomString(context, custom);
      }
    }
}