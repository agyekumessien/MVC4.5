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
using MainProgram.Models;



namespace MainProgram.Controllers
{
    public class Post_CSharpController : Controller
    {
        angulardemoEntities db = new angulardemoEntities();
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

            var posts = from s in obj.Post_CSharp
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostCSharpText.Contains(searchString)
                                       || s.PostCSharpTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostCSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostCSharpTitle);
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

            var posts = from s in obj.Post_CSharp
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostCSharpTitle.Contains(searchString)
                                       || s.PostCSharpText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostCSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostCSharpTitle);
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
        public ActionResult Create(Post_CSharp pcs)
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
                            pcs.UserId = userId;
                         
                            pcs.UserId = Convert.ToInt32(user);
                            pcs.CreatedOn = DateTime.Now;

                            db.Post_CSharp.Add(pcs);
                            db.SaveChanges();
                        }
                        ModelState.Clear();

                    }

                    /*IQueryable<Post_CSharp> pcss = obj.Post_CSharp
                                        .Select(p => new Post_CSharp
                                        {
                                            ThreadId = p.ThreadId,
                                            ThreadText = p.ThreadText,
                                            PostDate = p.PostDate.Value
                                        }).AsQueryable();*/




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

            var posts = from s in obj.Post_CSharp
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostCSharpTitle.Contains(searchString)
                                       || s.PostCSharpText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostCSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostCSharpTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }





        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
         //   if (id == null)
          //  {
          //      return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
         //   }
            Post_CSharp post = obj.Post_CSharp.Include(s => s.Post_CSharp1).SingleOrDefault(s => s.PostCSId == id);
            Post post2 = obj.Posts.Include(s => s.Post1).SingleOrDefault(s => s.PostId == id);
            var pscs = obj.Post_CSharp.Include(x => x.Post_CSReplies).ToList();
            {
                Post_CSharp imageModel = new Post_CSharp();

                using (angulardemoEntities db = new angulardemoEntities())
                {
                    imageModel = db.Post_CSharp.Where(x => x.PostCSId == id).FirstOrDefault();
                }
            }
           // if (post == null)
           // {
           //     return HttpNotFound();
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
            Post_CSharp ObjPCSharp = obj.Post_CSharp.Find(id);
            if (ObjPCSharp == null)
            {
                return HttpNotFound();
            }
            ViewBag.PCSId = new SelectList(obj.Post_CSharp, "Id", "PostCSharpText", ObjPCSharp.Post_CSharp1);

            return View(ObjPCSharp);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(Post_CSharp ObjPCSharp)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(ObjPCSharp).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "Post_CSharp", new { id = ObjPCSharp.PostCSId });
            }
            ViewBag.PostCSId = new SelectList(obj.Post_CSharp, "Id", "PostCSharpText", ObjPCSharp.Post_CSharp1);

            return View(ObjPCSharp);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Post_CSharp ObjPCSharp = obj.Post_CSharp.Find(id);
            if (ObjPCSharp == null)
            {
                return HttpNotFound();
            }
            return View(ObjPCSharp);
        }

        // POST: /Menu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                Post_CSharp ObjPCSharp = obj.Post_CSharp.Find(id);
                obj.Post_CSharp.Remove(ObjPCSharp);
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

            var posts = from s in obj.Post_CSharp
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostCSharpTitle.Contains(searchString)
                                       || s.PostCSharpText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostCSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostCSharpTitle);
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

            var posts = from s in obj.Post_CSharp
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostCSharpTitle.Contains(searchString)
                                       || s.PostCSharpText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostCSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostCSharpTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }


        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var ObjPCSharp = obj.Post_CSharp;
            return View(ObjPCSharp.ToList());
        }

        public ActionResult PostReply(Post_CSRepliesVM obj)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }
            Post_CSReplies r = new Post_CSReplies();
            r.PostCSRText = obj.Reply;
            r.PostCSId = obj.TID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            db.Post_CSReplies.Add(r);
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