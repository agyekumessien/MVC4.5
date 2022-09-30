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
    public class DBAController : Controller
    {
        // GET: DBA
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

            var posts = from s in obj.DBAs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.DBATitle.Contains(searchString)
                                       || s.DBAText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.DBATitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.DBATitle);
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

            var posts = from s in obj.DBAs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.DBATitle.Contains(searchString)
                                       || s.DBAText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.DBATitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.DBATitle);
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
        public ActionResult Create(DBA ds)
        {
            if (ModelState.IsValid)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                var user = UserHelper.GetUserId();
                if (user == null)
                {
                    return RedirectToAction("Login", "Account");
                }
                        /*   string fileName = Path.GetFileNameWithoutExtension(ds.ImageFile.FileName);
                           string extension = Path.GetExtension(ds.ImageFile.FileName);
                           fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                           //  fileName = System.IO.Path.GetFileName(thread.ImageFile.FileName);
                           ds.ImagePath = "/Image/" + fileName;
                           fileName = Path.Combine(Server.MapPath("/Image/"), fileName);
                           ds.ImageFile.SaveAs(fileName);*/
                        using (angulardemoEntities db = new angulardemoEntities())
                        {
                            ds.UserId = userId;
                          
                            ds.UserId = Convert.ToInt32(user);
                            ds.CreatedOn = DateTime.Now;

                            db.DBAs.Add(ds);
                            db.SaveChanges();
                        }
                        ModelState.Clear();

                    }

                    //IQueryable<Databas> DBs = obj.Databases
                                       // .Select(p => new Databas
                                      //  {
                                         //   DbId = p.DbId,
                                         //   DatabasesText = p.DatabasesText,
                                         //   PostDate = p.PostDate.Value
                                       // }).AsQueryable();




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


        public ActionResult GetPosts(string sortOrder, string currentFilter, string searchString, int? page, int? id)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();

            ViewBag.UserCount = (from m in obj.DotNets where m.AspNetUser.UserName == user select new { m.DotNetReplies }).Count();
            ViewBag.UserJessy = (from m in obj.DotNets where m.AspNetUser.UserName == "Jessy Suvan" select new { m.DotNetReplies }).Count();
            ViewBag.UserSoya = (from m in obj.DotNets where m.AspNetUser.UserName == "Mercy Soya" select new { m.DotNetReplies }).Count();
            ViewBag.UserJay = (from m in obj.DBAs where m.AspNetUser.UserName == "Jay Man" select new { m.DBAReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.DotNets where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.DotNetReplies }).Count();
            ViewBag.UserKoa = (from m in obj.DotNets where m.AspNetUser.UserName == "Samson Koa" select new { m.DotNetReplies }).Count();


            ViewBag.UserCount = (from m in obj.DBAs where m.AspNetUser.UserName == "Peter Agyekum" select new { m.DBAReplies }).Count();
            var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.DBAs.Where(a => a.DBAId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new DBA()
                    {

                        FullImageUrl = a.AspNetUser.UserPhoto.Any() ?

                                 imgPath + a.AspNetUser.UserPhoto + a.AspNetUser.UserPhoto.FirstOrDefault() :
                              null
                    }).OrderBy(a => a.AspNetUser.UserPhoto);
                }
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

                var posts = from s in obj.DBAs
                            select s;
                if (!String.IsNullOrEmpty(searchString))
                {
                    posts = posts.Where(s => s.DBATitle.Contains(searchString)
                        || s.FullImageUrl.Contains(searchString)
                                           || s.DBAText.Contains(searchString));
                }
                switch (sortOrder)
                {
                    case "name_desc":
                        posts = posts.OrderByDescending(s => s.DBATitle);
                        break;
                    case "Date":
                        posts = posts.OrderBy(s => s.PostDate);
                        break;
                    case "date_desc":
                        posts = posts.OrderByDescending(s => s.PostDate);
                        break;
                    default:  // Name ascending 
                        posts = posts.OrderBy(s => s.DBATitle);
                        break;
                }

             //   int pageSize = 3;
             //   int pageNumber = (page ?? 1);
              //  return View(posts.ToPagedList(pageNumber, pageSize));
                return View();
            }

        }




        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DBA post = obj.DBAs.Include(s => s.DBA1).SingleOrDefault(s => s.DBAId == id);
            var DBA = obj.DBAs.Include(x => x.DBAReplies).ToList();
           
                  var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.DBAs.Where(a => a.DBAId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new DBA()
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
            DBA ObjThread = obj.DBAs.Find(id);
            if (ObjThread == null)
            {
                return HttpNotFound();
            }
            ViewBag.DBAId = new SelectList(obj.DBAs, "Id", "DBAText", ObjThread.DBA1);

            return View(ObjThread);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(DBA ObjThread)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(ObjThread).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "DBA", new { id = ObjThread.DBAId });
            }
            ViewBag.DBAId = new SelectList(obj.DBAs, "Id", "DBAText", ObjThread.DBA1);

            return View(ObjThread);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DBA ObjThread = obj.DBAs.Find(id);
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
                DBA ObjThread = obj.DBAs.Find(id);
                obj.DBAs.Remove(ObjThread);
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

            var posts = from s in obj.DBAs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.DBATitle.Contains(searchString)
                                       || s.DBAText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.DBATitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.DBATitle);
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
                    return RedirectToAction("PostReply", "DBA");
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

            var posts = from s in obj.DBAs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.DBATitle.Contains(searchString)
                                       || s.DBAText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.DBATitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.DBATitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }


        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var DS = obj.DBAs;
            return View(DS.ToList());
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