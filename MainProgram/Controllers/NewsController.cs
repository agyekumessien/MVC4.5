using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web.Mvc;
using MainProgram.Core;
using MainProgram.Edm;
using System.IO;
using System.Collections.Generic;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.Threading.Tasks;
using System.Configuration;

using System.Drawing.Drawing2D;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System.Web;
using Microsoft.AspNet.Identity;
using MainProgram.Helper_Code;
using System.Data.SqlClient;
using System.Data;




namespace MainProgram.Controllers
{
    public class NewsController : Controller
    {

        angulardemoEntities obj = new angulardemoEntities();
        // GET: News
        public ActionResult Index()
        {
            return View();
        }



        [HttpGet]
        public ActionResult Subscribe()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Subscribe(tbh_Subscribe model)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }


            if (ModelState.IsValid)
            {


               model.UserId = Convert.ToInt32(user);
                model.emailid = model.emailid;


                //Save Order
                obj.tbh_Subscribe.Add(model);
                obj.SaveChanges();

            }
                return RedirectToAction("Sent", "News");

        }


       [HttpGet]
        public ActionResult NetCoreNews1()
        {
            ViewBag.netCoreN = obj.tbh_Pages.Where(x => x.Name.Equals("NetCoreNews")).ToList();
            return View();
        }


       [HttpGet]
       public ActionResult ErrorHandling()
       {
           ViewBag.netCoreN = obj.tbh_Pages.Where(x => x.Name.Equals("NetCoreNews")).ToList();
           return View();
       }

       [HttpGet]
       public ActionResult NewCore()
       {
           ViewBag.netCoreN = obj.tbh_Pages.Where(x => x.Name.Equals("NetCoreNews")).ToList();
           return View();
       }


       [HttpGet]
       public ActionResult NewsEntityF()
       {
          
           return View();
       }



        public ActionResult NetCoreNews()
        {

            return View();
        }



        public ActionResult Sent()
        {

            return View();
        }


        public ActionResult SolidPrinciples()
        {

            ViewBag.netCoreN = obj.tbh_Pages.Where(x => x.Name.Equals("NetCoreNews")).ToList();
            return View();
        }

    }
}