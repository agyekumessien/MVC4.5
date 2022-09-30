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
    public class CSharpController : Controller
    {
        angulardemoEntities db = new angulardemoEntities();
        // GET: CSharp
        public ViewResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            var csharps = db.CSharps.Include(x => x.CSReplies).ToList();
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            string CSharpCat= Request.QueryString.Get("searchString");

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.CSharps
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.CSharpTitle.Contains(searchString)
                                       || s.CSharpText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.CSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.CSharpTitle);
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

            var posts = from s in obj.CSharps
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.CSharpTitle.Contains(searchString)
                                       || s.CSharpText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.CSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.CSharpTitle);
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
        public ActionResult Create(CSharp cs)
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
                            cs.UserId = userId;
                        
                            cs.UserId = Convert.ToInt32(user);
                            cs.CreatedOn = DateTime.Now;

                            db.CSharps.Add(cs);
                            db.SaveChanges();
                        }
                        ModelState.Clear();

                    }

                    IQueryable<CSharp> CSs = obj.CSharps
                                        .Select(p => new CSharp
                                        {
                                            CSId = p.CSId,
                                            CSharpText = p.CSharpText,
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
                
                return RedirectToAction("AdminIndex");
            
        }



        public ActionResult PostReply(NoSqlReplyVM obj)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();

            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }
            CSReply r = new CSReply();
            r.CSRText = obj.Reply;
            r.CSRId = obj.TID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            db.CSReplies.Add(r);
            db.SaveChanges();

            return RedirectToAction("Index");
        }



        public ActionResult GetPosts(string sortOrder, string keyword, string currentFilter, string searchString, string orderBy, int? page)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();

         
            ViewBag.UserCount = (from m in obj.DotNets where m.AspNetUser.UserName == user select new { m.DotNetReplies }).Count();
            ViewBag.UserJessy = (from m in obj.DotNets where m.AspNetUser.UserName == "Jessy Suvan" select new { m.DotNetReplies }).Count();
            ViewBag.UserSoya = (from m in obj.DotNets where m.AspNetUser.UserName == "Mercy Soya" select new { m.DotNetReplies }).Count();
            ViewBag.UserJay = (from m in obj.DotNets where m.AspNetUser.UserName == "Jay Man" select new { m.DotNetReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.DotNets where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.DotNetReplies }).Count();
            ViewBag.UserKoa = (from m in obj.DotNets where m.AspNetUser.UserName == "Samson Koa" select new { m.DotNetReplies }).Count();


            ViewBag.UserCount = (from m in obj.Databases where m.AspNetUser.UserName == "Peter Agyekum" select new { m.DBReplies }).Count();

            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

           
            if (!page.HasValue)
            {
                page = 1; // set initial page value
                if (string.IsNullOrWhiteSpace(orderBy) || orderBy.Equals("asc"))
                {
                    orderBy = "desc";
                    page = 1;
                }
                else
                {
                    orderBy = "asc";
                }
            }
            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.CSharps
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.CSharpTitle.Contains(searchString)
                                       || s.CSharpText.Contains(searchString));
            }
            var list = db.CSharps.AsQueryable();

            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.CSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.CSharpTitle);
                    break;
            }
            if (!string.IsNullOrWhiteSpace(keyword))
            {
                list = list.Where(f => f.FirstName.StartsWith(keyword));
            }
           // int pageSize = 3;
           // int pageNumber = (page ?? 1);
          //  return View(posts.ToPagedList(pageNumber, pageSize));
            return View();
        }






        // GET: Student/Details/5
        public ActionResult Details(int? id)
        {
            //  if (id == null)
            // {
            //     return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            //   }


            CSharp post = obj.CSharps.Include(s => s.CSharp1).SingleOrDefault(s => s.CSId == id);
            var dn = obj.CSharps.Include(x => x.CSReplies).FirstOrDefault(s => s.CSId == id);
            // DotNetReply posts = obj.DotNetReplies.Include(s => s.DotNetReplies1).SingleOrDefault(s => s.DotNetId == id);
            var imgPath = Constants.ImagePath + "/";
            {
                var entities = obj.CSharps.Where(a => a.CSId == id);
                if (id > 0)
                {
                    var models = entities.Select(a => new CSharp()
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

       

      // GET: /Menu/Edit/5
          [HttpGet]
        public ActionResult Edit(int? id)
        {
          
            CSharp Objan = obj.CSharps.Find(id);

           // ViewBag.id = new SelectList(obj.NoteLists, "Id", "NoteListText", Objan.NoteList1);

            return View(Objan);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(CSharp Objpdn)
        {
            /*  int userId = Convert.ToInt32(Session["UserId"]);
              var user = UserHelper.GetUserId();

              if (user == null)
              {
                  return RedirectToAction("Login", "Account");
              }*/



            if (Objpdn.CSId == 0)
            {
                obj.CSharps.Add(Objpdn);
                obj.SaveChanges();
                return RedirectToAction("Details", "Post", new { id = Objpdn.CSId });
            }
            else
            {
                using (var context = new angulardemoEntities())
                {

                    //  // Objpdn.UserId = userId;
                    // Objpdn.UserId = Convert.ToInt32(user);

                    context.Entry(Objpdn).State = EntityState.Modified;
                    context.SaveChanges(); //Must be in using block


                }

                return View(Objpdn);

            }

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
            var csharps = db.CSharps.Include(x => x.CSReplies).ToList();
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            string CSharpCat = Request.QueryString.Get("searchString");

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.CSharps
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.CSharpTitle.Contains(searchString)
                                       || s.CSharpText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.CSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.CSharpTitle);
                    break;
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
        }



        public ActionResult AdminView(string sortOrder, string keyword, string currentFilter, string searchString, string orderBy, int? page)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();


            ViewBag.UserCount = (from m in obj.DotNets where m.AspNetUser.UserName == user select new { m.DotNetReplies }).Count();
            ViewBag.UserJessy = (from m in obj.DotNets where m.AspNetUser.UserName == "Jessy Suvan" select new { m.DotNetReplies }).Count();
            ViewBag.UserSoya = (from m in obj.DotNets where m.AspNetUser.UserName == "Mercy Soya" select new { m.DotNetReplies }).Count();
            ViewBag.UserJay = (from m in obj.DotNets where m.AspNetUser.UserName == "Jay Man" select new { m.DotNetReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.DotNets where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.DotNetReplies }).Count();
            ViewBag.UserKoa = (from m in obj.DotNets where m.AspNetUser.UserName == "Samson Koa" select new { m.DotNetReplies }).Count();


            ViewBag.UserCount = (from m in obj.Databases where m.AspNetUser.UserName == "Peter Agyekum" select new { m.DBReplies }).Count();

            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";


            if (!page.HasValue)
            {
                page = 1; // set initial page value
                if (string.IsNullOrWhiteSpace(orderBy) || orderBy.Equals("asc"))
                {
                    orderBy = "desc";
                    page = 1;
                }
                else
                {
                    orderBy = "asc";
                }
            }
            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.CSharps
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.CSharpTitle.Contains(searchString)
                                       || s.CSharpText.Contains(searchString));
            }
            var list = db.CSharps.AsQueryable();

            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.CSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.CSharpTitle);
                    break;
            }
            if (!string.IsNullOrWhiteSpace(keyword))
            {
                list = list.Where(f => f.FirstName.StartsWith(keyword));
            }
            // int pageSize = 3;
            // int pageNumber = (page ?? 1);
            //  return View(posts.ToPagedList(pageNumber, pageSize));
            return View();
        }



        



        public ActionResult Csquiz(string sortOrder, string keyword, string currentFilter, string searchString, string orderBy, int? page)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();


            ViewBag.UserCount = (from m in obj.DotNets where m.AspNetUser.UserName == user select new { m.DotNetReplies }).Count();
            ViewBag.UserJessy = (from m in obj.DotNets where m.AspNetUser.UserName == "Jessy Suvan" select new { m.DotNetReplies }).Count();
            ViewBag.UserSoya = (from m in obj.DotNets where m.AspNetUser.UserName == "Mercy Soya" select new { m.DotNetReplies }).Count();
            ViewBag.UserJay = (from m in obj.DotNets where m.AspNetUser.UserName == "Jay Man" select new { m.DotNetReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.DotNets where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.DotNetReplies }).Count();
            ViewBag.UserKoa = (from m in obj.DotNets where m.AspNetUser.UserName == "Samson Koa" select new { m.DotNetReplies }).Count();


            ViewBag.UserCount = (from m in obj.Databases where m.AspNetUser.UserName == "Peter Agyekum" select new { m.DBReplies }).Count();

            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";


            if (!page.HasValue)
            {
                page = 1; // set initial page value
                if (string.IsNullOrWhiteSpace(orderBy) || orderBy.Equals("asc"))
                {
                    orderBy = "desc";
                    page = 1;
                }
                else
                {
                    orderBy = "asc";
                }
            }
            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.CSharps
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.CSharpTitle.Contains(searchString)
                                       || s.CSharpText.Contains(searchString));
            }
            var list = db.CSharps.AsQueryable();

            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.CSharpTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.CSharpTitle);
                    break;
            }
            if (!string.IsNullOrWhiteSpace(keyword))
            {
                list = list.Where(f => f.FirstName.StartsWith(keyword));
            }
            // int pageSize = 3;
            // int pageNumber = (page ?? 1);
            //  return View(posts.ToPagedList(pageNumber, pageSize));
            return View();
        }



















        public ActionResult Cstutorial()
        {


            return View();
        }




        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var CS = obj.CSharps;
            return View(CS.ToList());
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