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
using MainProgram.Core;
using MainProgram.Models;




namespace MainProgram.Controllers
{
    public class DSController : Controller
    {
        angulardemoEntities db = new angulardemoEntities();
        // GET: Thread
        public ActionResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            var ds = db.Posts.Include(x => x.tbh_DSReplies).ToList();
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

            var posts = from s in obj.Posts
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostTitle.Contains(searchString)
                                       || s.PostText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostTitle);
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

            var posts = from s in obj.Posts
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.PostTitle.Contains(searchString)
                                       || s.PostText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.PostTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.PostTitle);
                    break;
            }

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
        public ActionResult Create(Post post)
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
                        post.UserId = userId;
                    
                        post.UserId = Convert.ToInt32(user);
                        post.CreatedOn = DateTime.Now;


                        db.Posts.Add(post);
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





       








        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Post post = obj.Posts.Include(s => s.Post1).SingleOrDefault(s => s.PostId == id);
            Post post2 = obj.Posts.Include(s => s.Post1).SingleOrDefault(s => s.PostId == id);
            {
                Post imageModel = new Post();

                using (angulardemoEntities db = new angulardemoEntities())
                {
                    imageModel = db.Posts.Where(x => x.PostId == id).FirstOrDefault();
                }
            }
            if (post == null)
            {
                return HttpNotFound();
            }
            return View(post);
        }


        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Post ObjThread = obj.Posts.Find(id);
            if (ObjThread == null)
            {
                return HttpNotFound();
            }
            ViewBag.PostId = new SelectList(obj.Threads, "Id", "PostText", ObjThread.Post1);

            return View(ObjThread);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(Post ObjThread)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(ObjThread).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "Thread", new { id = ObjThread.PostId });
            }
            ViewBag.PostId = new SelectList(obj.Threads, "Id", "PostText", ObjThread.Post1);

            return View(ObjThread);
        }
        // GET: /Menu/Delete/5


        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Post ObjThread = obj.Posts.Find(id);
            if (ObjThread == null)
            {
                return HttpNotFound();
            }
            return View(ObjThread);
        }

        // POST: /Menu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                Post ObjThread = obj.Posts.Find(id);
                obj.Posts.Remove(ObjThread);
                obj.SaveChanges();
            }

            catch (RetryLimitExceededException/* dex */)
            {
                //Log the error (uncomment dex variable name and add a line here to write a log.
                return RedirectToAction("Delete", new { id = id, saveChangesError = true });
            }
            return RedirectToAction("Index");
        }


        // Post: DS
     /*   [HttpPost]
        public ActionResult PostReply(tbh_DSRepliesVM obj)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            //  if (userId == 0)
            //{
            //   return RedirectToAction("Login", "Account");
            // }
            tbh_DSReplies r = new tbh_DSReplies();
            r.DSReplyText = obj.DSReply;
            r.PostId = obj.DSTID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            db.tbh_DSReplies.Add(r);
            db.SaveChanges();

            return RedirectToAction("Index");
        }*/





        [HttpPost]
        public ActionResult PostReply(tbh_DSReplies post)
        {
         
                if (ModelState.IsValid)
                {

                    int userId = Convert.ToInt32(Session["UserId"]);
                    var user = UserHelper.GetUserId();
                   
                        tbh_DSReplies r = new tbh_DSReplies();
                       
                        post.UserId = userId;
                       
                        post.UserId = Convert.ToInt32(user);
                        post.CreatedOn = DateTime.Now;
                

                       db.tbh_DSReplies.Add(post);
                        db.SaveChanges();
                    
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










        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var Posts = obj.Threads;
            return View(Posts.ToList());
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


