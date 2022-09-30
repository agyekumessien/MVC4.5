using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web.Mvc;
using MainProgram.Edm;
using System.Collections.Generic;
using PagedList;
using PagedList.Mvc;
using MainProgram.Core;
using MainProgram.Modelto;
using MainProgram.Helper_Code.Objects;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.Threading.Tasks;
using System.Configuration;
using MainProgram.Helper_Code;
using System.Drawing.Drawing2D;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using MainProgram.Core.Provider;
using Microsoft.AspNet.Identity;



namespace MainProgram.Controllers
{
    public class PagesController : Controller
    {

        angulardemoEntities db = new angulardemoEntities();
        ApplicationDbContext obj = new ApplicationDbContext();
        angulardemoEntities databaseManager = new angulardemoEntities();
       /* private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;*/

        public PagesController()
        {
        }

    /*    public PagesController(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
        {
            UserManager = userManager;
            SignInManager = signInManager;
        }

        public ApplicationSignInManager SignInManager
        {
            get
            {
                return _signInManager ?? HttpContext.GetOwinContext().Get<ApplicationSignInManager>();
            }
            private set
            {
                _signInManager = value;
            }
        }

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }*/



        // GET: Pages
        public ActionResult Index()
        {
            return View();
        }


        //ABOUT CHILDREN 

        public ActionResult Facility(string categoryName, int? page)
        {

           // var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
            ViewBag.Facility = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Facility")).ToList();

            return View();

        }

     //   public ActionResult Culture()
     //   {

         //   var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
         //   ViewBag.Culture = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Culture")).ToList();
          //  return View(d);

      //  }

        public ActionResult Policies()
        {

          //  var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
            ViewBag.Policies = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Policies"));
            return View();

        }

        public ActionResult Procedure(string categoryName, int? page)
        {
           // var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
            ViewBag.Procedure = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Policies & Procedure"));

            return View();
        }


        public ActionResult Ideas()
        {
           // var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
            ViewBag.Procedure = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Ideas"));

            return View();
        }





        //SERVICES CHILDREN 
        public ActionResult Blog()
        {


         //   var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
            ViewBag.Blog = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Blog"));

            return RedirectToAction("DownloadLink", "DownloadLink");
        }

       






        public ActionResult Download()
        {


            //ViewBag.Essien = databaseManager.tbh_Documents.Where(x => x.file_name.Equals("Peter Essien_Updated Resume.docx")).ToList();
            ViewBag.Culture = databaseManager.tbh_Documents.Where(x => x.file_name.Equals("culture2.jpg")).ToList();
            // Initialization.
            ImgViewModel model = new ImgViewModel { FileAttach = null, ImgLst = new List<ImgObj>() };

            try
            {
                // Settings.
                model.ImgLst = this.databaseManager.sp_get_all_Docfiles().Select(p => new ImgObj
                {
                    FileId = p.file_id,
                    FileName = p.file_name,
                    FileContentType = p.file_ext
                }).ToList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            // Info.
            return this.View(model);
        }




        #region Helpers

        #region Get file method.

        /// <summary>
        /// Get file method.
        /// </summary>
        /// <param name="fileContent">File content parameter.</param>
        /// <param name="fileContentType">File content type parameter</param>
        /// <returns>Returns - File.</returns>
        private FileResult GetFile(string fileContent, string fileContentType)
        {
            // Initialization.
            FileResult file = null;

            try
            {
                // Get file.
                byte[] byteContent = Convert.FromBase64String(fileContent);
                file = this.File(byteContent, fileContentType);
            }
            catch (Exception ex)
            {
                // Info.
                throw ex;
            }

            // info.
            return file;
        }

        #endregion

        #endregion






            

      


     //   SHOP CHILDREN 
    public ActionResult Women()
  {

      //      var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
     ViewBag.Women = db.tbh_Category.Where(x => x.tbh_Products.Equals("Women")).ToList();
    
      return View();
    }
    
    //    }

     //   public ActionResult Men()
     //   {
      //      var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
      //      ViewBag.Men = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Men")).ToList();

        //    return View(d);

     //   }
    //    public ActionResult Children()
     //   {
      //      return View();
     //   }

      //  public ActionResult AllProducts(string categoryName, int? page)
      //  {

         //   var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
          //  ViewBag.AllProducts = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("All Products")).ToList();

          //  return View(d);
     //   }



       // GALLERY CHILDREN  
        public ActionResult Media(int? id)
        {
         

          // ViewBag.DotNetVideo = entities.tblVideos.Where(x => x.Name.Equals("Ad.mp4")).ToList();

            tblVideo post = databaseManager.tblVideos.Include(s => s.tblVideo1).SingleOrDefault(s => s.id == id);
           return RedirectToAction("MvcVideo", "Video");
        
         
        }
     
    

 
        public ActionResult Photos()
        {
            ViewBag.smart = databaseManager.tbh_Replies.Where(x => x.AspNetUser.UserName.Equals("Smart Kanka")).ToList();

            return View();
        }



        //MORE CHILDREN 
        public ActionResult Trainning(string categoryName, int? page)
        {
           // var d = db.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
            ViewBag.Trainning = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Trainning")).ToList();

            return View();

        }

        public ActionResult Career()
        {
            ViewBag.Message = "Your Career page.";

            return View();
        }


        public ActionResult Interview()
        {
            ViewBag.Message = "Your Interview   page.";

            return View();
        }


    }
}