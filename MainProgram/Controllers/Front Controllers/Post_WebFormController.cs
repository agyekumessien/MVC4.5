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

namespace MainProgram.Controllers.Front_Controllers
{
    public class Post_WebFormController : Controller
    {
        angulardemoEntities db = new angulardemoEntities();
        // GET: ChatRoom
        public ViewResult Index(string sortOrder, string currentFilter, string searchString, int? page)
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

            var posts = from s in obj.Post_Webform
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostWformText.Contains(searchString)
                                       || s.PostWformTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostWformTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostWformTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult Search(string sortOrder, string currentFilter, string searchString, int? page)
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

            var posts = from s in obj.Post_Webform
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostWformText.Contains(searchString)
                                       || s.PostWformTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostWformTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostWformTitle);
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
        public ActionResult Create(Post_Webform pwf)
        {
            if (ModelState.IsValid)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                var user = UserHelper.GetUserId();
                if (user == null)
                {
                    return RedirectToAction("Login", "Account");
                }
                using (angulardemoEntities db = new angulardemoEntities())
                {
                    pwf.UserId = userId;
                    pwf.UserId = Convert.ToInt32(user);
                    pwf.CreatedOn = DateTime.Now;

                    db.Post_Webform.Add(pwf);
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

            var posts = from s in obj.Post_Webform
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostWformText.Contains(searchString)
                                       || s.PostWformTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostWformTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostWformTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }





        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
           // if (id == null)
          //  {
           //     return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
           // }
            Post_Webform post = obj.Post_Webform.Include(s => s.Post_Webform1).SingleOrDefault(s => s.PostWformId == id);
            var pwfs = obj.Post_Webform.Include(x => x.Post_WebformReplies).ToList();
            {
                Post_Webform imageModel = new Post_Webform();

                using (angulardemoEntities db = new angulardemoEntities())
                {
                    imageModel = db.Post_Webform.Where(x => x.PostWformId == id).FirstOrDefault();
                }
            }
           // if (post == null)
           // {
         // //      return HttpNotFound();
          //  }
            return View(post);
        }


        // GET: /Menu/Edit/5

        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Post_Webform ObjWF = obj.Post_Webform.Find(id);
            if (ObjWF == null)
            {
                return HttpNotFound();
            }
            ViewBag.PWFId = new SelectList(obj.Post_Webform, "Id", "PostWformText", ObjWF.Post_Webform1);

            return View(ObjWF);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(Post_Webform Objpwf)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(Objpwf).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "Post_Webform", new { id = Objpwf.PostWformId });
            }
            ViewBag.PostWF = new SelectList(obj.Post_Webform, "Id", "PostWformText", Objpwf.Post_Webform1);

            return View(Objpwf);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Post_Webform Objpwf = obj.Post_Webform.Find(id);
            if (Objpwf == null)
            {
                return HttpNotFound();
            }
            return View(Objpwf);
        }

        // POST: /Menu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                Post_Webform Objwf = obj.Post_Webform.Find(id);
                obj.Post_Webform.Remove(Objwf);
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

            var posts = from s in obj.Post_Webform
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostWformText.Contains(searchString)
                                       || s.PostWformTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostWformTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostWformTitle);
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

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.Post_Webform
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostWformText.Contains(searchString)
                                       || s.PostWformTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostWformTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostWformTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }





        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var Objwf = obj.Post_Webform;
            return View(Objwf.ToList());
        }

        // Post: ChatRoom
        [HttpPost]
        public ActionResult PostReply(Post_WebformRepliesVM obj)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }
            Post_WebformReplies r = new Post_WebformReplies();
            r.PostWformRText = obj.Reply;
            r.PostWformId= obj.TID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            db.Post_WebformReplies.Add(r);
            db.SaveChanges();

            return RedirectToAction("Index");
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