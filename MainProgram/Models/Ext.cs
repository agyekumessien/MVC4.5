using MainProgram.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using System.Web.Routing;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using MainProgram.Core;
using System.Security.Principal;
using MainProgram.Edm;





namespace MainProgram.Models
{
    public class LocalizationAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            var currentContext = new HttpContextWrapper(System.Web.HttpContext.Current);

            if (ApplicationLanguageInfo.AppLanguage() == null || ApplicationLanguageInfo.AppLanguage() == "")
            {
                currentContext.Response.Cookies["CacheLang"].Value = "en_US";
                currentContext.Response.Redirect(currentContext.Request.Url.ToString());
            }

            base.OnActionExecuting(filterContext);
        }
    }

    

    public static class Ext
    {

        public static string CurrentUser(string parm)
        {
            string result = string.Empty;
            var CurrentUser = System.Web.HttpContext.Current.User.Identity;// Context.User.Identity;
            if (CurrentUser.GetUserId() != null)
            {
                if (parm == "id")
                    result = CurrentUser.GetUserId();
                else
                    result = CurrentUser.GetUserName();
            }
            else
            {
                HttpContext.Current.Response.Redirect("~/Account/Login");
            }
            return result;
        }

       



        public static string GetCurrentUser(int Id)
        {
            string user = string.Empty;
            ApplicationDbContext db = new ApplicationDbContext();
            var users = db.Users.FirstOrDefault(i => i.Id == Id);
            if (users != null)
               user = users.UserName;
            return user;
        }

        public static string GetUserProfile(int Id)
        {
            string userProfile = string.Empty;
            ApplicationDbContext db = new ApplicationDbContext();
            var users = db.Users.FirstOrDefault(i => i.Id == Id);
            if (users != null)
                userProfile = users.UserProfile;



            return userProfile;
        }


        public static string GetUserName(int Id)
        {
            string name = string.Empty;
            ApplicationDbContext db = new ApplicationDbContext();
            var users = db.Users.FirstOrDefault(i => i.Id == Id);
            if (users != null)
                name = users.UserName;

            return name;
        }
        public static string GetUserRole(int Id)
        {
            string name = string.Empty;
            ApplicationDbContext db = new ApplicationDbContext();

            var users = db.Users.FirstOrDefault(i => i.Id == Id);
            if (users != null)
            {
                var idd = users.Roles.FirstOrDefault().RoleId;
                //name = idd;
                name = db.Roles.FirstOrDefault(i => i.Id == idd).Name;

            }
            return name;
        }

        public static string GetUserRoleId(int Id)
        {
            string name = string.Empty;
            ApplicationDbContext db = new ApplicationDbContext();

            var users = db.Users.FirstOrDefault(i => i.Id == Id);
            if (users != null)
            {
                var idd = users.Roles.FirstOrDefault().RoleId;
                name = db.Roles.FirstOrDefault(i => i.Id == idd).Name;
            }
            return name;
        }

        public static string GetSiteRoot()
        {
            string sOut = "";
            if (System.Web.HttpContext.Current != null)
            {
                string Port = System.Web.HttpContext.Current.Request.ServerVariables["SERVER_PORT"];
                if (Port == null || Port == "80" || Port == "443")
                    Port = string.Empty;
                else
                    Port = ":" + Port;

                string Protocol = System.Web.HttpContext.Current.Request.ServerVariables["SERVER_PORT_SECURE"];
                if (Protocol == null || Protocol.Equals("0"))
                    Protocol = "http://";
                else
                    Protocol = "https://";

                string appPath = System.Web.HttpContext.Current.Request.ApplicationPath;
                if (appPath == "/")
                    appPath = "";

                sOut = Protocol + System.Web.HttpContext.Current.Request.ServerVariables["SERVER_NAME"] + Port + appPath;
            }
            return sOut;
        }

        public static string Language()
        {
            var currentContext = new HttpContextWrapper(System.Web.HttpContext.Current);
            try
            {
                var routeData = RouteTable.Routes.GetRouteData(currentContext);
                string languageCode = (string)routeData.Values["cultureName"];
                if (languageCode.Length > 0)
                    return languageCode;
                else
                    return "en_US";

            }
            catch (Exception)
            {
                return "en_US";
            }

        }

      






    }


    public class ApplicationLanguageInfo
    {

        public static string AppLanguage()
        {
            var cook = System.Web.HttpContext.Current.Request.Cookies["CacheLang"];
            if (System.Web.HttpContext.Current.Request.Cookies["CacheLang"] != null)
                return cook.Value;
            else
                return "";
        }


    }
}



