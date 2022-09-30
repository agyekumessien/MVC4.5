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
    public class JqJaController : Controller
    {
        // GET: EntityF
        public ViewResult Index(string sortOrder, string currentFilter, string searchString, int? page, int? FullPage)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                FullPage = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.JqJavas
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.JqJavaTitle.Contains(searchString)
                                       || s.JqJavaText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.JqJavaTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.JqJavaTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult Search(string sortOrder, string currentFilter, string searchString, int? page, int? FullPage)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                FullPage = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.JqJavas
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.JqJavaTitle.Contains(searchString)
                                       || s.JqJavaText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.JqJavaTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.JqJavaTitle);
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
        public ActionResult Create(JqJava jqj)
        {
            if (ModelState.IsValid)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                var user = UserHelper.GetUserId();
                if (user == null)
                {
                    return RedirectToAction("Login", "Account");
                }
                /* string fileName = Path.GetFileNameWithoutExtension(ef.ImageFile.FileName);
                 string extension = Path.GetExtension(ef.ImageFile.FileName);
                 fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                 //  fileName = System.IO.Path.GetFileName(thread.ImageFile.FileName);
                 ef.ImagePath = "/Image/" + fileName;
                 fileName = Path.Combine(Server.MapPath("/Image/"), fileName);
                 ef.ImageFile.SaveAs(fileName);*/
                using (angulardemoEntities db = new angulardemoEntities())
                {
                    jqj.UserId = userId;
                    jqj.UserId = Convert.ToInt32(user);
                    jqj.CreatedOn = DateTime.Now;


                    db.JqJavas.Add(jqj);
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




            ViewBag.UserCount2 = (from m in obj.JqJavas where m.AspNetUser.UserName == user select new { m.JqJavaReplies }).Count();
            ViewBag.UserJessy = (from m in obj.JqJavas where m.AspNetUser.UserName == "Jessy Suvan" select new { m.JqJavaReplies }).Count();
            ViewBag.UserSoya = (from m in obj.JqJavas where m.AspNetUser.UserName == "Mercy Soya" select new { m.JqJavaReplies }).Count();
            ViewBag.UserJay = (from m in obj.JqJavas where m.AspNetUser.UserName == "Jay Man" select new { m.JqJavaReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.JqJavas where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.JqJavaReplies }).Count();
            ViewBag.UserKoa = (from m in obj.JqJavas where m.AspNetUser.UserName == "Samson Koa" select new { m.JqJavaReplies }).Count();
            ViewBag.UserAntonita = (from m in obj.JqJavas where m.AspNetUser.UserName == "Antonita Seed" select new { m.JqJavaReplies }).Count();

            ViewBag.UserCount = (from m in obj.JqJavas where m.AspNetUser.UserName == "Peter Agyekum" select new { m.JqJavaReplies }).Count();

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

            var posts = from s in obj.JqJavas
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.JqJavaText.Contains(searchString)
                                       || s.JqJavaTitle.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.JqJavaTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.JqJavaTitle);
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
            JqJava post = obj.JqJavas.Include(s => s.JqJava1).SingleOrDefault(s => s.JqJavaId == id);
            JqJava post2 = obj.JqJavas.Include(s => s.JqJava1).SingleOrDefault(s => s.JqJavaId == id);
            var efw = obj.JqJavas.Include(x => x.JqJavaReplies).ToList();
            var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.DotNets.Where(a => a.DotNetId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new JqJava()
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
            JqJava Objjqj = obj.JqJavas.Find(id);
            if (Objjqj == null)
            {
                return HttpNotFound();
            }
            ViewBag.jqjId = new SelectList(obj.JqJavas, "Id", "JqJavaText", Objjqj.JqJava1);

            return View(Objjqj);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(JqJava Objjqj)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(Objjqj).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "Post", new { id = Objjqj.JqJavaId });
            }
            ViewBag.jqjId = new SelectList(obj.JqJavas, "Id", "EntityFText", Objjqj.JqJava1);

            return View(Objjqj);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JqJava Objjqj = obj.JqJavas.Find(id);
            if (Objjqj == null)
            {
                return HttpNotFound();
            }
            return View(Objjqj);
        }

        // POST: /Menu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                JqJava Objjqj = obj.JqJavas.Find(id);
                obj.JqJavas.Remove(Objjqj);
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

        public ActionResult SearchIndex(string sortOrder, string currentFilter, string searchString, int? page, int? FullPage)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                FullPage = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.JqJavas
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.JqJavaTitle.Contains(searchString)
                                       || s.JqJavaText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.JqJavaTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.JqJavaTitle);
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
                    return RedirectToAction("Create", "EntityF");
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
        public ViewResult AdminIndex(string sortOrder, string currentFilter, string searchString, int? page, int? FullPage)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                FullPage = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.JqJavas
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.JqJavaTitle.Contains(searchString)
                                       || s.JqJavaText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.JqJavaTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.JqJavaTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }

        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var Ef = obj.JqJavas;
            return View(Ef.ToList());
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                obj.Dispose();
            }
            base.Dispose(disposing);
        }





        public ActionResult Tutorial()
        {
            return View();
        }


        public ActionResult Introduction()
        {
            return View();
        }

        public ActionResult Syntax()
        {
            return View();
        }


        public ActionResult DataType()
        {
            return View();
        }
    }
}