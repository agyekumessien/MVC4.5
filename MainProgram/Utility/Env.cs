using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using System.Security.Claims;
using System.Threading;
using System.Web.Routing;
using System.Web.Security;
using System.Text;
using MainProgram.Edm;



namespace MainProgram.Utility
{
    public   static class Env
    {

         /// <summary>
        /// Its used for get role id and role name from Claims
        /// </summary>
        /// <param name="s"></param>
        /// <param name="IsRoleID">If you want role ID then pass true , if role name then pass false</param>
        /// <returns></returns>
        public static string GetUserRoleOrUsername(this HtmlHelper s, bool IsRoleID)
        {
            var identity = (ClaimsPrincipal)Thread.CurrentPrincipal;
            string role = string.Empty;
            if (IsRoleID == true)
            {
                role = identity.Claims.Where(c => c.Type == ClaimTypes.Role).Select(c => c.Value).SingleOrDefault();
            }
            else
            {
                role = identity.Claims.Where(c => c.Type == ClaimTypes.Name).Select(c => c.Value).SingleOrDefault();
            }

            return role;
        }



        /// <summary>
        /// This Method will used for take all data from Claims Cookies 
        /// </summary>
        /// <param name="value">use "name" for Get UserName, 
        /// use "userid" for Get Logedin UserId,
        /// use "company" for Get Company Name,
        /// use "email" for Get Email,
        /// use "roleid" for Get RoleId,
        /// use "rolename" for Get RoleName,
        /// use "image" for Get User Profile Image,
        /// use "theme" for Get Theme (color scheme)
        /// </param>
        /// <returns>String</returns>
        public static string GetUserInfo(string value)
        {
            var identity = (ClaimsPrincipal)Thread.CurrentPrincipal;
            string ReturnVal = string.Empty;
            switch (value)
            {
                case "name":
                    ReturnVal = identity.Claims.Where(c => c.Type == ClaimTypes.Name).Select(c => c.Value).SingleOrDefault();
                    break;
                case "userid":
                    ReturnVal = identity.Claims.Where(c => c.Type == ClaimTypes.Sid).Select(c => c.Value).SingleOrDefault();
                    break;
                case "roleid":
                    ReturnVal = identity.Claims.Where(c => c.Type == ClaimTypes.Role).Select(c => c.Value).SingleOrDefault();
                    break;
                default:
                    ReturnVal = "";
                    break;
            }

            return ReturnVal;

        }

        
        private static string GetWomenInfo(string name)
        {

            StringBuilder tasks = new StringBuilder();

            // THIS WOULD BE A CALL TO THE DB TO RETURN THE RAW VALUES FOR A USER
            var productInfo = new tbh_SubDepartments();


            // TEST FOR TASKS HAVING THE VALUE OF TRUE
            productInfo.Name =  productInfo.Name;
            {
                tasks.Append("Name,");
            }

            productInfo.Description =   productInfo.Description;
            {
                tasks.Append("Description,");
            }

            productInfo.MenuURL = productInfo.MenuURL;
         
            {
                tasks.Append("MenuURL");
            }

            // CONVERT STRING BUILDER TO A STRING
            var result = tasks.ToString();

            // REMOVE THE LAST COMMA IF WE HAVE ONE
            if (result.EndsWith(","))
            {
                result = result.Remove(result.Length - 1);
            }

            return result;
        }



        private static void CreateMockData()
        {

      var      _ProductInfo = new List<tbh_SubDepartments>();

      _ProductInfo.Add(new tbh_SubDepartments { Title = "Women", SubDepartmentID = 6063, Description = "",SubDeptPic= "" });
         //   _ProductInfo.Add(new tbh_Products { Name = "Neeva", CompanyId = "456", Task1 = false, Task2 = true, Task3 = false });
        }

     public   static void Main(string[] args)
        {
            // THIS DATA WOULD BE IN YOUR DATABASE
            CreateMockData();

            var productDetails = GetWomenInfo("Women");
            Console.WriteLine(productDetails);

           // productDetails = GetProducts("Neeva");
            Console.WriteLine(productDetails);

            Console.ReadLine();
        }




        public static string Language()
        {
            var currentContext = new HttpContextWrapper(System.Web.HttpContext.Current);
            try
            {
                var routeData = RouteTable.Routes.GetRouteData(currentContext);
                string languageCode = (string)routeData.Values["cultureName"];
                return languageCode.ToLower();
            }
            catch (Exception)
            {
                return "en";
            }

        }



    }
}

   