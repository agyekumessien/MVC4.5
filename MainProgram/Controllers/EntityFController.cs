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
    public class EntityFController : Controller
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

            var posts = from s in obj.EntityFrameWorks
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.EntityFTitle.Contains(searchString)
                                       || s.EntityFText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.EntityFTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.EntityFTitle);
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

            var posts = from s in obj.EntityFrameWorks
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.EntityFTitle.Contains(searchString)
                                       || s.EntityFText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.EntityFTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.EntityFTitle);
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
        public ActionResult Create(EntityFrameWork ef)
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
                            ef.UserId = userId;
                           
                            ef.UserId = Convert.ToInt32(user);
                            ef.CreatedOn = DateTime.Now;
                         

                            db.EntityFrameWorks.Add(ef);
                            db.SaveChanges();
                        }
                        ModelState.Clear();

                    }

                    IQueryable<EntityFrameWork> EFs = obj.EntityFrameWorks
                                        .Select(p => new EntityFrameWork
                                        {
                                            EntityFId = p.EntityFId,
                                            EntityFText = p.EntityFText,
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


        public ActionResult GetPosts(string sortOrder, string currentFilter, string searchString, int? page, int? FullPage)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            var Model = new DotNetVM();
            ViewBag.UserCount = (from m in obj.DotNets where m.AspNetUser.UserName == user select new { m.DotNetReplies }).Count();
            ViewBag.UserJessy = (from m in obj.DotNets where m.AspNetUser.UserName == "Jessy Suvan" select new { m.DotNetReplies }).Count();
            ViewBag.UserSoya = (from m in obj.DotNets where m.AspNetUser.UserName == "Mercy Soya" select new { m.DotNetReplies }).Count();
            ViewBag.UserJay = (from m in obj.DotNets where m.AspNetUser.UserName == "Jay Man" select new { m.DotNetReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.DotNets where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.DotNetReplies }).Count();
            ViewBag.UserKoa = (from m in obj.DotNets where m.AspNetUser.UserName == "Samson Koa" select new { m.DotNetReplies }).Count();
            ViewBag.UserKodi = (from m in obj.EntityFrameWorks where m.AspNetUser.UserName == "Samuel Kodi" select new { m.EntityFReplies }).Count();

            ViewBag.UserCount = (from m in obj.EntityFrameWorks where m.AspNetUser.UserName == "Peter Agyekum" select new { m.EntityFReplies }).Count();


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

            var posts = from s in obj.EntityFrameWorks
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.EntityFTitle.Contains(searchString)
                                       || s.EntityFText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.EntityFTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.EntityFTitle);
                    break;
            }

            //int pageNumber = (page ?? 1);
           // return View(posts.ToPagedList(pageNumber, pageSize));
           // return View(posts.ToPagedList(pageNumber, pageSize));
            return View();
        }






        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EntityFrameWork post = obj.EntityFrameWorks.Include(s => s.EntityFrameWork1).SingleOrDefault(s => s.EntityFId == id);
            EntityFrameWork post2 = obj.EntityFrameWorks.Include(s => s.EntityFrameWork1).SingleOrDefault(s => s.EntityFId == id);
            var efw = obj.EntityFrameWorks.Include(x => x.EntityFReplies).ToList();
            var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.DotNets.Where(a => a.DotNetId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new EntityFrameWork()
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
            EntityFrameWork ObjEF = obj.EntityFrameWorks.Find(id);
            if (ObjEF == null)
            {
                return HttpNotFound();
            }
           // ViewBag.efId = new SelectList(obj.EntityFrameWorks, "Id", "ThreadText", ObjEF.EntityFrameWork1);

            return View(ObjEF);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(EntityFrameWork ObjEF)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(ObjEF).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "Post", new { id = ObjEF.EntityFId });
            }
        //    ViewBag.efId = new SelectList(obj.EntityFrameWorks, "Id", "EntityFText", ObjEF.EntityFrameWork1);

            return View(ObjEF);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EntityFrameWork ObjEF = obj.EntityFrameWorks.Find(id);
            if (ObjEF == null)
            {
                return HttpNotFound();
            }
            return View(ObjEF);
        }

        // POST: /Menu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                EntityFrameWork ObjEF = obj.EntityFrameWorks.Find(id);
                obj.EntityFrameWorks.Remove(ObjEF);
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

            var posts = from s in obj.EntityFrameWorks
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.EntityFTitle.Contains(searchString)
                                       || s.EntityFText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.EntityFTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.EntityFTitle);
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

            var posts = from s in obj.EntityFrameWorks
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.EntityFTitle.Contains(searchString)
                                       || s.EntityFText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.EntityFTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.EntityFTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }




        public ActionResult AdminView(string sortOrder, string currentFilter, string searchString, int? page, int? FullPage)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            var Model = new DotNetVM();
            ViewBag.UserCount = (from m in obj.DotNets where m.AspNetUser.UserName == user select new { m.DotNetReplies }).Count();
            ViewBag.UserJessy = (from m in obj.DotNets where m.AspNetUser.UserName == "Jessy Suvan" select new { m.DotNetReplies }).Count();
            ViewBag.UserSoya = (from m in obj.DotNets where m.AspNetUser.UserName == "Mercy Soya" select new { m.DotNetReplies }).Count();
            ViewBag.UserJay = (from m in obj.DotNets where m.AspNetUser.UserName == "Jay Man" select new { m.DotNetReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.DotNets where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.DotNetReplies }).Count();
            ViewBag.UserKoa = (from m in obj.DotNets where m.AspNetUser.UserName == "Samson Koa" select new { m.DotNetReplies }).Count();
            ViewBag.UserKodi = (from m in obj.EntityFrameWorks where m.AspNetUser.UserName == "Samuel Kodi" select new { m.EntityFReplies }).Count();

            ViewBag.UserCount = (from m in obj.EntityFrameWorks where m.AspNetUser.UserName == "Peter Agyekum" select new { m.EntityFReplies }).Count();


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

            var posts = from s in obj.EntityFrameWorks
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.EntityFTitle.Contains(searchString)
                                       || s.EntityFText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.EntityFTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.EntityFTitle);
                    break;
            }

            //int pageNumber = (page ?? 1);
            // return View(posts.ToPagedList(pageNumber, pageSize));
            // return View(posts.ToPagedList(pageNumber, pageSize));
            return View();
        }





        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var Ef = obj.EntityFrameWorks;
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

      
    }
}