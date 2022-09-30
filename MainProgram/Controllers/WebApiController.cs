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

namespace MainProgram.Controllers
{
    public class WebApiController : Controller
    {
        private angulardemoEntities obj = new angulardemoEntities();

        // GET: WebApi
        public ActionResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            var WebApiCat = Request.QueryString.Get("searchString");
            var query = obj.WebApis.Select(c => new { c.WebApiId, c.DepartmentID });
            ViewBag.Categories = new SelectList(query.AsEnumerable(), "CategoryID", "CategoryName");


            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.WebApis
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.WebApiText.Contains(searchString)
                                       || s.WebApiTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.WebApiTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.WebApiTitle);
                    break;
            }
            WebApiCat = searchString;
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult Search(string sortOrder, string currentFilter, string searchString, int? page)
        {
             ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            var WebApiCat = Request.QueryString.Get("searchString");
            var query = obj.WebApis.Select(c => new { c.WebApiId, c.DepartmentID });
            ViewBag.Categories = new SelectList(query.AsEnumerable(), "CategoryID", "CategoryName");


            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.WebApis
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.WebApiText.Contains(searchString)
                                       || s.WebApiTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.WebApiTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.WebApiTitle);
                    break;
            }
            WebApiCat = searchString;
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }

         public ActionResult Create()
        {
            return View();
        }
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(WebApi an)
        {
            if (ModelState.IsValid)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                var user = UserHelper.GetUserId();
                if (user == null)
                {
                    return RedirectToAction("Login", "Account");
                }
                /*  string fileName = Path.GetFileNameWithoutExtension(dn.ImageFile.FileName);
                        string extension = Path.GetExtension(dn.ImageFile.FileName);
                        fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                        //  fileName = System.IO.Path.GetFileName(thread.ImageFile.FileName);
                        dn.ImagePath = "/Image/" + fileName;
                        fileName = Path.Combine(Server.MapPath("/Image/"), fileName);
                        dn.ImageFile.SaveAs(fileName);*/

                using (angulardemoEntities db = new angulardemoEntities())
                {
                    an.UserId = userId;

                    an.UserId = Convert.ToInt32(user);
                    an.CreatedOn = DateTime.Now;

                    db.WebApis.Add(an);
                    db.SaveChanges();
                }
                ModelState.Clear();
            }
            try
            {
                // Your code...
                // Could also be before try if you know the exception occurs in SaveChanges
            }
            catch (RetryLimitExceededException /* dex */)
            {
                //Log the error (uncomment dex variable name and add a line here to write a log.
                ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your system administrator.");
            }

            return RedirectToAction("Index");

        }

           public ActionResult CreateReply()
        {
            return View();
        }
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateReply(WebApiReply dr)
        {
            if (ModelState.IsValid)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                var user = UserHelper.GetUserId();
                /*  string fileName = Path.GetFileNameWithoutExtension(dn.ImageFile.FileName);
                        string extension = Path.GetExtension(dn.ImageFile.FileName);
                        fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                        //  fileName = System.IO.Path.GetFileName(thread.ImageFile.FileName);
                        dn.ImagePath = "/Image/" + fileName;
                        fileName = Path.Combine(Server.MapPath("/Image/"), fileName);
                        dn.ImageFile.SaveAs(fileName);*/

                using (angulardemoEntities db = new angulardemoEntities())
                {
                    dr.UserId = userId;
                    dr.WebApiRId = userId;

                    dr.UserId = Convert.ToInt32(user);
                    dr.CreatedOn = DateTime.Now;

                    db.WebApiReplies.Add(dr);
                    db.SaveChanges();
                }
                ModelState.Clear();
            }
            try
            {
                // Your code...
                // Could also be before try if you know the exception occurs in SaveChanges
            }
            catch (RetryLimitExceededException /* dex */)
            {
                //Log the error (uncomment dex variable name and add a line here to write a log.
                ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your system administrator.");
            }

            return RedirectToAction("Index");

        }


          public ActionResult GetPosts(string sortOrder, string currentFilter, string searchString, int? page)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();




            ViewBag.UserCount2 = (from m in obj.WebApis where m.AspNetUser.UserName == user select new { m.WebApiReplies }).Count();
            ViewBag.UserJessy = (from m in obj.WebApis where m.AspNetUser.UserName == "Jessy Suvan" select new { m.WebApiReplies }).Count();
            ViewBag.UserSoya = (from m in obj.WebApis where m.AspNetUser.UserName == "Mercy Soya" select new { m.WebApiReplies }).Count();
            ViewBag.UserJay = (from m in obj.WebApis where m.AspNetUser.UserName == "Jay Man" select new { m.WebApiReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.WebApis where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.WebApiReplies }).Count();
            ViewBag.UserKoa = (from m in obj.WebApis where m.AspNetUser.UserName == "Samson Koa" select new { m.WebApiReplies }).Count();
            ViewBag.UserAntonita = (from m in obj.WebApis where m.AspNetUser.UserName == "Antonita Seed" select new { m.WebApiReplies }).Count();

            ViewBag.UserCount = (from m in obj.WebApis where m.AspNetUser.UserName == "Peter Agyekum" select new { m.WebApiReplies }).Count();

          ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";



            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.WebApis
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.WebApiText.Contains(searchString)
                                       || s.WebApiTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.WebApiTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.WebApiTitle);
                    break;
            }

          //  int pageSize = 3;
           // int pageNumber = (page ?? 1);
            return View();
        }



        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
            //  if (id == null)
            // {
            //     return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //   }


            WebApi post = obj.WebApis.Include(s => s.WebApi1).SingleOrDefault(s => s.WebApiId == id);
            var dn = obj.WebApis.Include(x => x.WebApiReplies).FirstOrDefault(s => s.WebApiId == id);
            // DotNetReply posts = obj.DotNetReplies.Include(s => s.DotNetReplies1).SingleOrDefault(s => s.DotNetId == id);
            var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.WebApis.Where(a => a.WebApiId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new WebApiVM()
                    {

                        FullImageUrl = a.AspNetUser.UserPhoto.Any() ?

                                 imgPath + a.AspNetUser.UserPhoto + a.AspNetUser.UserPhoto.FirstOrDefault() :
                              null
                    }).OrderBy(a => a.AspNetUser.UserPhoto);


                }

                return View(post);
            }

        }

        // GET: /Menu/Edit/5

        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WebApi Objan = obj.WebApis.Find(id);
            if (Objan == null)
            {
                return HttpNotFound();
            }
            ViewBag.ans = new SelectList(obj.WebApis, "Id", "WebApiText", Objan.WebApi1);

            return View(Objan);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(WebApiVM Objpdn)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(Objpdn).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "WebApi", new { id = Objpdn.WebApiId });
            }
            ViewBag.PostDN = new SelectList(obj.WebApis, "Id", "WebApiText", Objpdn.WebApi1);

            return View(Objpdn);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WebApi Objdn = obj.WebApis.Find(id);
            if (Objdn == null)
            {
                return HttpNotFound();
            }
            return View(Objdn);
        }

        // POST: /Menu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
               WebApi Objdn = obj.WebApis.Find(id);
                obj.WebApis.Remove(Objdn);
                obj.SaveChanges();
            }

            catch (RetryLimitExceededException/* dex */)
            {
                //Log the error (uncomment dex variable name and add a line here to write a log.
                return RedirectToAction("Delete", new { id = id, saveChangesError = true });
            }
            return RedirectToAction("Index");
        }


        // GET: /Menu/MultiViewIndex/5

        public ActionResult SearchIndex(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.Angulars
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.AngularText.Contains(searchString)
                                       || s.AngularTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.AngularTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.AngularTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }


        //[Authorize(Roles = "SuperAdmin")]
        public ViewResult AdminIndex(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.Angulars
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.AngularText.Contains(searchString)
                                       || s.AngularTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.AngularTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.AngularTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }



        private ActionResult ModelBind()
        {
            var Objdn = obj.WebApis;
            return View(Objdn.ToList());
        }



        public ActionResult PostReply(WebApiVM web)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }
            WebApiReply r = new WebApiReply();
            r.WebApiRText = web.Reply;
            r.WebApiId = web.TID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            obj.WebApiReplies.Add(r);
            obj.SaveChanges();

            return RedirectToAction("Index");
        }

        public PartialViewResult GetReplies(int postId)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            IQueryable<WebApiReply> comments = obj.WebApiReplies.Where(c => c.WebApi.WebApiId == postId)
                                                       .Select(c => new WebApiReply
                                                       {
                                                           WebApiRId = c.WebApiRId,

                                                           WebApiRText = c.WebApiRText,
                                                           AspNetUser = new AspNetUser
                                                           {
                                                               // UserId = c.AspNetUser.UserId,
                                                               UserName = c.AspNetUser.UserName,
                                                               UserPhoto = c.AspNetUser.UserPhoto
                                                           }
                                                       }).AsQueryable();

            return PartialView("~/Views/Shared/_MyReplies.cshtml", comments);
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                obj.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
