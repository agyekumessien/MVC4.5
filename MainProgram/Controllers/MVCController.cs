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
    public class MVCController : Controller
    {

        angulardemoEntities obj = new angulardemoEntities();
        // GET: CSS
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

            var posts = from s in obj.MVCs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.MVCTitle.Contains(searchString)
                                       || s.MVCText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.MVCTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.MVCTitle);
                    break;
            }

            int pageSize = 15;
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

            var posts = from s in obj.MVCs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.MVCTitle.Contains(searchString)
                                       || s.MVCText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.MVCTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.MVCTitle);
                    break;
            }

            int pageSize = 15;
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
        public ActionResult Create(MVC mc)
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
                            mc.UserId = userId;
                          
                            mc.UserId = Convert.ToInt32(user);
                            mc.CreatedOn = DateTime.Now;

                            obj.MVCs.Add(mc);
                            obj.SaveChanges();
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
            var Model = new DotNetVM();
            ViewBag.UserCount = (from m in obj.DotNets where m.AspNetUser.UserName == user select new { m.DotNetReplies }).Count();
            ViewBag.UserJames = (from m in obj.MVCs where m.AspNetUser.UserName == "James Say" select new { m.MVCReplies }).Count();
            ViewBag.UserSoya = (from m in obj.DotNets where m.AspNetUser.UserName == "Mercy Soya" select new { m.DotNetReplies }).Count();
            ViewBag.UserJay = (from m in obj.DotNets where m.AspNetUser.UserName == "Jay Man" select new { m.DotNetReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.DotNets where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.DotNetReplies }).Count();
            ViewBag.UserKoa = (from m in obj.DotNets where m.AspNetUser.UserName == "Samson Koa" select new { m.DotNetReplies }).Count();


            ViewBag.UserCount = (from m in obj.MVCs where m.AspNetUser.UserName == "Peter Agyekum" select new { m.MVCReplies }).Count();

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

            var posts = from s in obj.MVCs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.MVCTitle.Contains(searchString)
                                       || s.MVCText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.MVCTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.MVCTitle);
                    break;
            }

           // int pageSize = 3;
           // int pageNumber = (page ?? 1);
          //  return View(posts.ToPagedList(pageNumber, pageSize));
            return View();
        }






        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MVC post = obj.MVCs.Include(s => s.MVC1).SingleOrDefault(s => s.MVCId == id);
           MVC post2 = obj.MVCs.Include(s => s.MVC1).SingleOrDefault(s => s.MVCId == id);
            var css = obj.MVCs.Include(x => x.MVCReplies).ToList();
            var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.MVCs.Where(a => a.MVCId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new MVC()
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
            MVC ObjMVC = obj.MVCs.Find(id);
            if (ObjMVC == null)
            {
                return HttpNotFound();
            }
            ViewBag.cssId = new SelectList(obj.MVCs, "Id", "MVCText", ObjMVC.MVC1);

            return View(ObjMVC);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(MVC ObjMVC)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(ObjMVC).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "MVC", new { id = ObjMVC.MVCId });
            }
            ViewBag.MVCId = new SelectList(obj.MVCs, "Id", "MVCText", ObjMVC.MVC1);

            return View(ObjMVC);
        }
        // GET: /Menu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MVC ObjMVC = obj.MVCs.Find(id);
            if (ObjMVC == null)
            {
                return HttpNotFound();
            }
            return View(ObjMVC);
        }

        // POST: /Menu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
               MVC ObjMVC = obj.MVCs.Find(id);
                obj.MVCs.Remove(ObjMVC);
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

            var posts = from s in obj.MVCs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.MVCTitle.Contains(searchString)
                                       || s.MVCText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.MVCTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.MVCTitle);
                    break;
            }

            int pageSize = 15;
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
            using (ApplicationDbContext ApObj = new ApplicationDbContext())
            {
                ApplicationUser user = ApObj.Users.Where(u => u.UserName.ToLower() == username.ToLower())
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

            var posts = from s in obj.MVCs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.MVCTitle.Contains(searchString)
                                       || s.MVCText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.MVCTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.MVCTitle);
                    break;
            }

            int pageSize = 15;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }









      
        private ActionResult ModelBind()
        {
            var Mc = obj.MVCs;
            return View(Mc.ToList());
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