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

namespace MainProgram.Controllers
{
    public class ChatRDotNetController : Controller
    {
        // GET: DotNet
        angulardemoEntities db = new angulardemoEntities();
        // GET: Post_JqJava
        public ViewResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        
        {
            var pcs = db.DotNets.Include(x => x.DotNetReplies).ToList();
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

            var posts = from s in obj.DotNets
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.DotNetText.Contains(searchString)
                                       || s.DotNetTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.DotNetTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.DotNetTitle);
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

            var posts = from s in obj.DotNets
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.DotNetText.Contains(searchString)
                                       || s.DotNetTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.DotNetTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.DotNetTitle);
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
        public ActionResult Create(DotNet dn)
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
                    dn.UserId = userId;
                   
                    dn.UserId = Convert.ToInt32(user);
                    dn.CreatedOn = DateTime.Now;

                    db.DotNets.Add(dn);
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


       
        [HttpGet]
        public ActionResult GetPosts()
        {
            IQueryable<DotNet> Posts = db.DotNets
                                                 .Select(p => new DotNet
                                                 {
                                                     DotNetId = p.DotNetId,
                                                     DotNetText = p.DotNetText,
                                                     CreatedOn = p.CreatedOn
                                                 }).AsQueryable();

            return View(Posts);
        }

        

        public PartialViewResult GetReplies(int postId)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            IQueryable<DotNetReply> comments = db.DotNetReplies.Where(c => c.DotNet.DotNetId == postId)
                                                       .Select(c => new DotNetReply
                                                       {
                                                           DNRId = c.DNRId,

                                                           DNRText = c.DNRText,
                                                           AspNetUser = new AspNetUser
                                                           {
                                                               // UserId = c.AspNetUser.UserId,
                                                               UserName = c.AspNetUser.UserName,
                                                               UserPhoto = c.AspNetUser.UserPhoto
                                                           }
                                                       }).AsQueryable();

            return PartialView("~/Views/Shared/_MyReplies.cshtml", comments);
        }


        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
            //  if (id == null)
            // {
            //     return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //   }
            DotNet post = obj.DotNets.Include(s => s.DotNet1).SingleOrDefault(s => s.DotNetId == id);
            var pcs = db.DotNets.Include(x => x.DotNetReplies).ToList();
            ViewBag.dnPost = obj.DotNets.Where(x => x.AspNetUser.UserName.Equals("UserId")).ToList();
            // var dn = obj.DotNets.Include(x => x.DotNetReplies).FirstOrDefault(s => s.DotNetId == id);
            // DotNetReply posts = obj.DotNetReplies.Include(s => s.DotNetReplies1).SingleOrDefault(s => s.DotNetId == id);
            {
                using (var context = new angulardemoEntities())
                {
                    var posts2 = context.DotNets
                                       .Where(p => p.DotNetText == "<sql-server>")
                                       .Select(p => new DotNet()
                                       {
                                           DotNetId = p.DotNetId,
                                           DotNetTitle = p.DotNetTitle,
                                           DotNetReplies = p.DotNetReplies
                                       });

                    // Do Something

                    var posts3 = context.DotNets
                          .Where(p => p.DotNetId == id)
                          .Select(p => new { p.DotNetReplies, p.DotNetId });

                }
                //   if (post == null)
                //    {
                //        return HttpNotFound();
                //    }
                return View(pcs);
            }
        }


        public ActionResult Replies(int? id)
        {
            //  if (id == null)
            // {
            //     return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //   }
            DotNet post = obj.DotNets.Include(s => s.DotNet1).SingleOrDefault(s => s.DotNetId == id);
            var pcs = db.DotNets.Include(x => x.DotNetReplies).ToList();
            ViewBag.dnPost = obj.DotNets.Where(x => x.AspNetUser.UserName.Equals("UserId")).ToList();
            // var dn = obj.DotNets.Include(x => x.DotNetReplies).FirstOrDefault(s => s.DotNetId == id);
            // DotNetReply posts = obj.DotNetReplies.Include(s => s.DotNetReplies1).SingleOrDefault(s => s.DotNetId == id);
            {
                using (var context = new angulardemoEntities())
                {
                    var posts2 = context.DotNets
                                       .Where(p => p.DotNetText == "<sql-server>")
                                       .Select(p => new DotNet()
                                       {
                                           DotNetId = p.DotNetId,
                                           DotNetTitle = p.DotNetTitle,
                                           DotNetReplies = p.DotNetReplies
                                       });

                    // Do Something

                    var posts3 = context.DotNets
                          .Where(p => p.DotNetId == id)
                          .Select(p => new { p.DotNetReplies, p.DotNetId });

                }
                //   if (post == null)
                //    {
                //        return HttpNotFound();
                //    }
                return View(pcs);
            }
        }





        // GET: /Menu/Edit/5

        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DotNet Objdn = obj.DotNets.Find(id);
            if (Objdn == null)
            {
                return HttpNotFound();
            }
            ViewBag.dns = new SelectList(obj.DotNets, "Id", "DotNetText", Objdn.DotNet1);

            return View(Objdn);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(DotNetVM Objpdn)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(Objpdn).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "DotNet", new { id = Objpdn.DotNetId });
            }
            ViewBag.PostDN = new SelectList(obj.DotNets, "Id", "DotNetText", Objpdn.DotNet1);

            return View(Objpdn);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DotNet Objdn = obj.DotNets.Find(id);
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
                DotNet Objdn = obj.DotNets.Find(id);
                obj.DotNets.Remove(Objdn);
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

            var posts = from s in obj.DotNets
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.DotNetText.Contains(searchString)
                                       || s.DotNetTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.DotNetTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.DotNetTitle);
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
                    return RedirectToAction("PostReply", "DotNet");
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

            var posts = from s in obj.DotNets
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.DotNetText.Contains(searchString)
                                       || s.DotNetTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.DotNetTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.DotNetTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }


        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var Objdn = obj.DotNets;
            return View(Objdn.ToList());
        }



        public ActionResult PostReply(DotNetVM obj)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            //  if (userId == 0)
            //{
            //   return RedirectToAction("Login", "Account");
            // }
            DotNetReply r = new DotNetReply();
            r.DNRText = obj.Reply;
            r.DotNetId = obj.TID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            db.DotNetReplies.Add(r);
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
