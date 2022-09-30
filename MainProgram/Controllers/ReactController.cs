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
//using Microsoft.AspNet.Identity;

namespace MainProgram.Controllers
{
    public class ReactController : Controller
    {
        private angulardemoEntities obj = new angulardemoEntities();

        // GET: React
        public ActionResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            var ReactCat = Request.QueryString.Get("searchString");
            var query = obj.Reacts.Select(c => new { c.ReactId, c.DepartmentID });
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

            var posts = from s in obj.Reacts
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.ReactText.Contains(searchString)
                                       || s.ReactTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.ReactTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.ReactTitle);
                    break;
            }
            ReactCat = searchString;
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }
   public ActionResult Search(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            var ReactCat = Request.QueryString.Get("searchString");
            var query = obj.Reacts.Select(c => new { c.ReactId, c.DepartmentID });
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

            var posts = from s in obj.Reacts
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.ReactText.Contains(searchString)
                                       || s.ReactTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.ReactTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.ReactTitle);
                    break;
            }
           
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }
        //[Authorize(Roles = "SuperAdmin")]


         public ActionResult Create()
        {
            return View();
        }
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(React rea)
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
                    rea.UserId = userId;

                    rea.UserId = Convert.ToInt32(user);
                    rea.CreatedOn = DateTime.Now;

                    db.Reacts.Add(rea);
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
        public ActionResult CreateReply(ReactReply dr)
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
                    dr.ReactRId = userId;

                    dr.UserId = Convert.ToInt32(user);
                    dr.CreatedOn = DateTime.Now;

                    db.ReactReplies.Add(dr);
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




            ViewBag.UserCount2 = (from m in obj.Reacts where m.AspNetUser.UserName == user select new { m.ReactReplies }).Count();
            ViewBag.UserJessy = (from m in obj.Reacts where m.AspNetUser.UserName == "Jessy Suvan" select new { m.ReactReplies }).Count();
            ViewBag.UserSoya = (from m in obj.Reacts where m.AspNetUser.UserName == "Mercy Soya" select new { m.ReactReplies }).Count();
            ViewBag.UserJay = (from m in obj.Reacts where m.AspNetUser.UserName == "Jay Man" select new { m.ReactReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.Reacts where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.ReactReplies }).Count();
            ViewBag.UserKoa = (from m in obj.Reacts where m.AspNetUser.UserName == "Samson Koa" select new { m.ReactReplies }).Count();
            ViewBag.UserAntonita = (from m in obj.Reacts where m.AspNetUser.UserName == "Antonita Seed" select new { m.ReactReplies }).Count();

            ViewBag.UserCount = (from m in obj.Reacts where m.AspNetUser.UserName == "Peter Agyekum" select new { m.ReactReplies }).Count();

           ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            var ReactCat = Request.QueryString.Get("searchString");
            var query = obj.Reacts.Select(c => new { c.ReactId, c.DepartmentID });
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

            var posts = from s in obj.Reacts
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.ReactText.Contains(searchString)
                                       || s.ReactTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.ReactTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.ReactTitle);
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


            React post = obj.Reacts.Include(s => s.React1).SingleOrDefault(s => s.ReactId == id);
            var dn = obj.Reacts.Include(x => x.ReactReplies).FirstOrDefault(s => s.ReactId == id);
            // DotNetReply posts = obj.DotNetReplies.Include(s => s.DotNetReplies1).SingleOrDefault(s => s.DotNetId == id);
            var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.Reacts.Where(a => a.ReactId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new ReactVM()
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
          [HttpPost, ActionName("Edit")]
        public ActionResult Edit(int? id)
        {
            if (id != null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            React Objan = obj.Reacts.Find(id);

            if (Objan == null)
            {
                return HttpNotFound();
            }

            return View(Objan);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
   
       
        public ActionResult Edit(React Objpdn)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(Objpdn).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "React", new { id = Objpdn.ReactId });
            }
            ViewBag.PostDN = new SelectList(obj.Reacts, "Id", "ReactText", Objpdn.React1);

            return View(Objpdn);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            React Objdn = obj.Reacts.Find(id);
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
                React Objdn = obj.Reacts.Find(id);
                obj.Reacts.Remove(Objdn);
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

            var ReactCat = Request.QueryString.Get("searchString");
            var query = obj.Reacts.Select(c => new { c.ReactId, c.DepartmentID });
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

            var posts = from s in obj.Reacts
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.ReactText.Contains(searchString)
                                       || s.ReactTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.ReactTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.ReactTitle);
                    break;
            }
            ReactCat = searchString;
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

            var ReactCat = Request.QueryString.Get("searchString");
            var query = obj.Reacts.Select(c => new { c.ReactId, c.DepartmentID });
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

            var posts = from s in obj.Reacts
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.ReactText.Contains(searchString)
                                       || s.ReactTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.ReactTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.ReactTitle);
                    break;
            }
           
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }






        public ActionResult PostReply(ReactVM rea)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }
            ReactReply r = new ReactReply();
            r.ReactRText = rea.Reply;
            r.ReactId = rea.TID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            obj.ReactReplies.Add(r);
            obj.SaveChanges();

            return RedirectToAction("Index");
        }

        public PartialViewResult GetReplies(int postId)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            IQueryable<ReactReply> comments = obj.ReactReplies.Where(c => c.React.ReactId == postId)
                                                       .Select(c => new ReactReply
                                                       {
                                                           ReactRId = c.ReactRId,

                                                           ReactRText = c.ReactRText,
                                                           AspNetUser = new AspNetUser
                                                           {
                                                               // UserId = c.AspNetUser.UserId,
                                                               UserName = c.AspNetUser.UserName,
                                                               UserPhoto = c.AspNetUser.UserPhoto
                                                           }
                                                       }).AsQueryable();

            return PartialView("~/Views/Shared/_MyReplies.cshtml", comments);
        }




        private ActionResult ModelBind()
        {
            var Objdn = obj.Reacts;
            return View(Objdn.ToList());
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
