using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web.Mvc;
using MainProgram.Edm;
using System.IO;
using System.Net;
using PagedList;
using PagedList.Mvc;
using MainProgram.Core;
using MainProgram.Core.Provider;

namespace MainProgram.Controllers
{
    public class NoSqlController : Controller
    {
        // GET: NoSql
        angulardemoEntities db = new angulardemoEntities();
        // GET: CSharp
        public ViewResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            var csharps = db.NoSqls.Include(x => x.NoSqlReplies).ToList();
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            string NoSqlCat = Request.QueryString.Get("searchString");

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.NoSqls
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NoSqlTitle.Contains(searchString)
                                       || s.NoSqlText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NoSqlTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NoSqlTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult Search(string sortOrder, string currentFilter, string searchString, int? page)
        {
            var csharps = db.NoSqls.Include(x => x.NoSqlReplies).ToList();
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            string NoSqlCat = Request.QueryString.Get("searchString");

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.NoSqls
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NoSqlTitle.Contains(searchString)
                                       || s.NoSqlText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NoSqlTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NoSqlTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }

     

        public ActionResult Create(NoSql ns)
        {


            if (ModelState.IsValid)
            {



                int userId = Convert.ToInt32(Session["UserId"]);
                var user = UserHelper.GetUserId();
                if (user == null)
                {
                    return RedirectToAction("Login", "Account");
                }
                /* string fileName = Path.GetFileNameWithoutExtension(cs.ImageFile.FileName);
                 string extension = Path.GetExtension(cs.ImageFile.FileName);
                 fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                 //  fileName = System.IO.Path.GetFileName(thread.ImageFile.FileName);
                 cs.ImagePath = "/Image/" + fileName;
                 fileName = Path.Combine(Server.MapPath("/Image/"), fileName);
                 cs.ImageFile.SaveAs(fileName);*/
                using (angulardemoEntities db = new angulardemoEntities())
                {
                    ns.UserId = userId;

                    ns.UserId = Convert.ToInt32(user);
                    ns.CreatedOn = DateTime.Now;

                    db.NoSqls.Add(ns);
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

            return View();

        }





        public ActionResult PostReply(NoSqlReplyVM obj)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();

            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }
            NoSqlReply r = new NoSqlReply();
            r.NoSqlRText = obj.Reply;
            r.NoSqlRId= obj.TID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            db.NoSqlReplies.Add(r);
            db.SaveChanges();

            return RedirectToAction("Index");
        }



        public ActionResult GetPosts(string sortOrder, string keyword, string currentFilter, string searchString, string orderBy, int? page)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();


            ViewBag.UserCount = (from m in obj.NoSqls where m.AspNetUser.UserName == user select new { m.NoSqlReplies }).Count();
            ViewBag.UserJessy = (from m in obj.NoSqls where m.AspNetUser.UserName == "Jessy Suvan" select new { m.NoSqlReplies }).Count();
            ViewBag.UserSoya = (from m in obj.NoSqls where m.AspNetUser.UserName == "Mercy Soya" select new { m.NoSqlReplies }).Count();
            ViewBag.UserJay = (from m in obj.NoSqls where m.AspNetUser.UserName == "Jay Man" select new { m.NoSqlReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.NoSqls where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.NoSqlReplies }).Count();
            ViewBag.UserKoa = (from m in obj.NoSqls where m.AspNetUser.UserName == "Samson Koa" select new { m.NoSqlReplies }).Count();


            ViewBag.UserCount = (from m in obj.NoSqls where m.AspNetUser.UserName == "Peter Agyekum" select new { m.NoSqlReplies }).Count();

           
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            string NoSqlCat = Request.QueryString.Get("searchString");

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.NoSqls
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NoSqlTitle.Contains(searchString)
                                       || s.NoSqlText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NoSqlTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NoSqlTitle);
                    break;
            }

            //  int pageSize = 3;
            // int pageNumber = (page ?? 1);
            return View();
        }





        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NoSql post = obj.NoSqls.Include(s => s.NoSql1).SingleOrDefault(s => s.NoSqlId == id);
            var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.NoSqls.Where(a => a.NoSqlId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new NoSql()
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
            NoSql ObjNoSql = obj.NoSqls.Find(id);
            if ( ObjNoSql== null)
            {
                return HttpNotFound();
            }
            ViewBag.NoSqlId = new SelectList(obj.NoSqls, "Id", "NoSqlText", ObjNoSql.NoSql1);

            return View(ObjNoSql);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(NoSql ObjNoSql)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(ObjNoSql).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "Post", new { id = ObjNoSql.NoSqlId });
            }
            ViewBag.NoSqlId = new SelectList(obj.NoSqls, "Id", "NoSqlText", ObjNoSql.NoSql1);
            
            return View(ObjNoSql);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NoSql ObjNoSql = obj.NoSqls.Find(id);
            if (ObjNoSql == null)
            {
                return HttpNotFound();
            }
            return View(ObjNoSql);
        }

        // POST: /Menu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                NoSql ObjNoSql = obj.NoSqls.Find(id);
                obj.NoSqls.Remove(ObjNoSql);
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

            string NoSqlCat = Request.QueryString.Get("searchString");

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.NoSqls
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NoSqlTitle.Contains(searchString)
                                       || s.NoSqlText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NoSqlTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NoSqlTitle);
                    break;
            }

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
                    return RedirectToAction("PostReply", "ChatRoom");
                }
                else
                {
                    ViewBag.Msg = "Username does not exist !";
                    return View();
                    // return RedirectToAction("Register", "Account");
                }

            }

        }

        //[Authorize(Roles = "SuperAdmin")]
        public ViewResult AdminIndex(string sortOrder, string currentFilter, string searchString, int? page)
        {
          
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            string NoSqlCat = Request.QueryString.Get("searchString");

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.NoSqls
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.NoSqlTitle.Contains(searchString)
                                       || s.NoSqlText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.NoSqlTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.NoSqlTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }








        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var NS = obj.NoSqls;
            return View(NS.ToList());
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