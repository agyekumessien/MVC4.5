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




    public class ThreadController : Controller
    {
        // GET: Forum


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

            var posts = from s in obj.Threads
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.ThreadText.Contains(searchString)
                                       || s.AspNetUser.FullName.Contains(searchString));
            }


            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.ThreadText);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.ThreadTitle);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.CreatedOn);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.AspNetUser.FirstName);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult Search(string sortOrder, string currentFilter, string searchString, int? page)
        {

            string PostCat= Request.QueryString.Get("searchString");
            


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

            var posts = from s in obj.Threads
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.AspNetUser.FirstName.Contains(searchString)
                                       || s.AspNetUser.FullName.Contains(searchString));
            }


            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.AspNetUser.FirstName);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.CreatedOn);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.CreatedOn);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.AspNetUser.FirstName);
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
        public ActionResult Create(Thread thread)
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
                            thread.UserId = userId;
                          
                            thread.UserId = Convert.ToInt32(user);
                            thread.CreatedOn = DateTime.Now;

                            db.Threads.Add(thread);
                            db.SaveChanges();
                        }
                        ModelState.Clear();

                    }

                    IQueryable<Thread> threads = obj.Threads
                                        .Select(p => new Thread
                                        {
                                            ThreadId = p.ThreadId,
                                            ThreadText = p.ThreadText,
                                            PostDate = p.PostDate.Value
                                        }).AsQueryable();




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


        public ActionResult GetPosts()
        {
            IQueryable<Thread> threads = obj.Threads
                                              .Select(p => new Thread
                                              {
                                                  ThreadId = p.ThreadId,
                                                  ThreadText = p.ThreadText,
                                                  PostDate = p.PostDate.Value
                                              }).AsQueryable();
            return View(threads);


        }




        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
            //   if (id == null)
            //  {
            //      return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //   }
            Thread post = obj.Threads.Include(s => s.Thread1).SingleOrDefault(s => s.ThreadId == id);
            var pscs = obj.Threads.Include(x => x.tbh_Replies).ToList();
            {
                Thread imageModel = new Thread();

                using (angulardemoEntities db = new angulardemoEntities())
                {
                    imageModel = db.Threads.Where(x => x.ThreadId == id).FirstOrDefault();
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
            if (id != null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Thread ObjThread = obj.Threads.Find(id);
            if (ObjThread == null)
            {
                return HttpNotFound();
            }
            ViewBag.ThreadId = new SelectList(obj.Threads, "Id", "ThreadText", ObjThread.Thread1);

            return View(ObjThread);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(Thread ObjThread)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(ObjThread).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "Post", new { id = ObjThread.ThreadId });
            }
            ViewBag.ThreadId = new SelectList(obj.Threads, "Id", "ThreadText", ObjThread.Thread1);

            return View(ObjThread);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Thread ObjThread = obj.Threads.Find(id);
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
                Thread ObjThread = obj.Threads.Find(id);
                obj.Threads.Remove(ObjThread);
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

            var posts = from s in obj.Threads
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.AspNetUser.FirstName.Contains(searchString)
                                       || s.AspNetUser.FullName.Contains(searchString));
            }


            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.AspNetUser.FirstName);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.CreatedOn);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.CreatedOn);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.AspNetUser.FirstName);
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

            var posts = from s in obj.Threads
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.ThreadTitle.Contains(searchString)
                                       || s.ThreadText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.ThreadTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.ThreadTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }



        // Post: ChatRoom
        [HttpPost]
        public ActionResult PostReply(tbh_RepliesVM obj)
        {

            if (ModelState.IsValid)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                var user = UserHelper.GetUserId();
                if (user == null)
                {
                    return RedirectToAction("Login", "Account");
                }
                tbh_Replies r = new tbh_Replies();
                r.ReplyText = obj.Reply;
                r.ThreadId = obj.TID;
                r.UserId = userId;

                r.UserId = Convert.ToInt32(user);
                r.CreatedOn = DateTime.Now;

                db.tbh_Replies.Add(r);
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }







        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var Threads = obj.Threads;
            return View(Threads.ToList());
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