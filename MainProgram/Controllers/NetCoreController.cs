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
    public class NetCoreController : Controller
    {
        private angulardemoEntities obj = new angulardemoEntities();


        // GET: NetCore
        public ViewResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            var NetCoreCat = Request.QueryString.Get("searchString");
            var query = obj.NetCores.Select(c => new { c.NetCoreId, c.DepartmentID });
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

            var posts = from s in obj.NetCores
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NetCoreText.Contains(searchString)
                                       || s.NetCoreTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NetCoreTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NetCoreTitle);
                    break;
            }
            NetCoreCat = searchString;
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult Search(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            var NetCoreCat = Request.QueryString.Get("searchString");
            var query = obj.NetCores.Select(c => new { c.NetCoreId, c.DepartmentID });
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

            var posts = from s in obj.NetCores
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NetCoreText.Contains(searchString)
                                       || s.NetCoreTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NetCoreTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NetCoreTitle);
                    break;
            }
            NetCoreCat = searchString;
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
        public ActionResult Create(NetCore nc)
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
                    nc.UserId = userId;

                    nc.UserId = Convert.ToInt32(user);
                    nc.CreatedOn = DateTime.Now;

                    db.NetCores.Add(nc);
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
        public ActionResult CreateReply(NetCoreReply dr)
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
                    dr.NetCoreRId = userId;

                    dr.UserId = Convert.ToInt32(user);
                    dr.CreatedOn = DateTime.Now;

                    db.NetCoreReplies.Add(dr);
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




            ViewBag.UserCount2 = (from m in obj.NetCores where m.AspNetUser.UserName == user select new { m.NetCoreReplies }).Count();
            ViewBag.UserJessy = (from m in obj.NetCores where m.AspNetUser.UserName == "Jessy Suvan" select new { m.NetCoreReplies }).Count();
            ViewBag.UserSoya = (from m in obj.NetCores where m.AspNetUser.UserName == "Mercy Soya" select new { m.NetCoreReplies }).Count();
            ViewBag.UserJay = (from m in obj.NetCores where m.AspNetUser.UserName == "Jay Man" select new { m.NetCoreReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.NetCores where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.NetCoreReplies }).Count();
            ViewBag.UserKoa = (from m in obj.NetCores where m.AspNetUser.UserName == "Samson Koa" select new { m.NetCoreReplies }).Count();
            ViewBag.UserAntonita = (from m in obj.NetCores where m.AspNetUser.UserName == "Antonita Seed" select new { m.NetCoreReplies }).Count();

            ViewBag.UserCount = (from m in obj.NetCores where m.AspNetUser.UserName == "Peter Agyekum" select new { m.NetCoreReplies }).Count();

            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            var NetCoreCat = Request.QueryString.Get("searchString");
            var query = obj.NetCores.Select(c => new { c.NetCoreId, c.DepartmentID });
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

            var posts = from s in obj.NetCores
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NetCoreText.Contains(searchString)
                                       || s.NetCoreTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NetCoreTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NetCoreTitle);
                    break;
            }
            NetCoreCat = searchString;
          //  int pageSize = 3;
          //  int pageNumber = (page ?? 1);
            return View();
        }





        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
            //  if (id == null)
            // {
            //     return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //   }


            NetCore post = obj.NetCores.Include(s => s.NetCore1).SingleOrDefault(s => s.NetCoreId == id);
            var dn = obj.NetCores.Include(x => x.NetCoreReplies).FirstOrDefault(s => s.NetCoreId == id);
            // DotNetReply posts = obj.DotNetReplies.Include(s => s.DotNetReplies1).SingleOrDefault(s => s.DotNetId == id);
            var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.NetCores.Where(a => a.NetCoreId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new NetCoreVM()
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
            NetCore Objan = obj.NetCores.Find(id);
            if (Objan == null)
            {
                return HttpNotFound();
            }
            ViewBag.ncs = new SelectList(obj.NetCores, "Id", "NetCoreText", Objan.NetCore1);

            return View(Objan);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(NetCore Objpdn)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(Objpdn).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "NetCore", new { id = Objpdn.NetCoreId });
            }
            ViewBag.PostDN = new SelectList(obj.NetCores, "Id", "NetCoreText", Objpdn.NetCore1);

            return View(Objpdn);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NetCore Objdn = obj.NetCores.Find(id);
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
                NetCore Objdn = obj.NetCores.Find(id);
                obj.NetCores.Remove(Objdn);
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

            var NetCoreCat = Request.QueryString.Get("searchString");
            var query = obj.NetCores.Select(c => new { c.NetCoreId, c.DepartmentID });
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

            var posts = from s in obj.NetCores
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NetCoreText.Contains(searchString)
                                       || s.NetCoreTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NetCoreTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NetCoreTitle);
                    break;
            }
            NetCoreCat = searchString;
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }



        public ActionResult GetUsers()
        {
            return View();
        }

        [HttpPost]
        public ActionResult GetUsers(string username)
        {
            using (ApplicationDbContext obj = new ApplicationDbContext())
            {
                ApplicationUser user = obj.Users.Where(u => u.UserName.ToLower() == username.ToLower())
                                     .FirstOrDefault();

                if (user != null)
                {
                    Session["UserId"] = user.Id;
                    return RedirectToAction("PostReply", "NetCore");
                }
                else
                {
                    ViewBag.Msg = "Username does not exist !";
                    return View();
                    // return RedirectToAction("Register", "Account");
                }

            }

        }

        [Authorize(Roles = "Admin")]
        public ViewResult AdminIndex(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            var NetCoreCat = Request.QueryString.Get("searchString");
            var query = obj.NetCores.Select(c => new { c.NetCoreId, c.DepartmentID });
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

            var posts = from s in obj.NetCores
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NetCoreText.Contains(searchString)
                                       || s.NetCoreTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NetCoreTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NetCoreTitle);
                    break;
            }
            NetCoreCat = searchString;
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }



        private ActionResult ModelBind()
        {
            var Objdn = obj.NetCores;
            return View(Objdn.ToList());
        }



        public ActionResult PostReply(NetCoreVM ncs)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }
            NetCoreReply r = new NetCoreReply();
            r.NetCoreRText = ncs.Reply;
            r.NetCoreId = ncs.TID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            obj.NetCoreReplies.Add(r);
            obj.SaveChanges();

            return RedirectToAction("Index");
        }

        public PartialViewResult GetReplies(int postId)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            IQueryable<NetCoreReply> comments = obj.NetCoreReplies.Where(c => c.NetCore.NetCoreId == postId)
                                                       .Select(c => new NetCoreReply
                                                       {
                                                           NetCoreRId = c.NetCoreRId,

                                                           NetCoreRText = c.NetCoreRText,
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
