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
using System.Collections.Generic;

namespace MainProgram.Controllers
{
    public class UserController : Controller
    {
        angulardemoEntities db = new angulardemoEntities();
        // GET: User
        public ActionResult Index()
        {
            var userP = db.Users.ToList();
            return View();
        }
/*
  public ActionResult UserProfile(User Model)
        {
       angulardemoEntities db = new angulardemoEntities();

        int userId = Convert.ToInt32(Session["UserId"]);
            var userHelper = UserHelper.GetUserId();
            var user = GetUserProfile();
            var r = new User();
            
               r.FirstName = Model.FirstName;
               r.LastName = Model.LastName;
                r.Email = Model.Email;
                r.Gender = Model.Gender;
               r.ID = userHelper;

          
  
            return RedirectToAction("Index");
            
  }
  
 */
        
        public ActionResult UserProfile()
        {
            return View();
        }


/*

  [HttpPost]
        [ValidateAntiForgeryToken]
 public ActionResult UserProfile(User Model)
 {
         if (ModelState.IsValid)
                    {
                        int userId = Convert.ToInt32(Session["UserId"]);
                        var user = UserHelper.GetUserId();
                               var users = GetUserProfile();
                        using (angulardemoEntities db = new angulardemoEntities())
                        {
                            Model.FirstName = Model.FirstName;
                         Model.LastName = Model.LastName;
                            Model.Email = Model.Email;
                         Model.Gender = Model.Gender;
                          Model.ID = (user);
                            db.Users.Add(Model);
                            db.SaveChanges();
                        }
                        ModelState.Clear();

                    }


                    try
                    {
                        // Your code...
                        // Could also be before try if you know the exception occurs in SaveChanges




                    }
                    catch (RetryLimitExceededException )
                    {
                        //Log the error (uncomment dex variable name and add a line here to write a log.
                        ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your system administrator.");
                      
                }
                return RedirectToAction("Index");
            }

*/

  public ActionResult SearchSite(string sortOrder, string currentFilter, string searchString, int? page)
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

      var posts = from s in db.Threads
                  select s;
      if (!String.IsNullOrEmpty(searchString))
      {
          posts = posts.Where(s => s.ThreadTitle.Contains(searchString)
                                 || s.ThreadText.Contains(searchString));
      }
      if (searchString != null)
      {
          List<Thread> newlist = new List<Thread>();
          foreach (var Name in searchString)
          {
              foreach (var item in newlist)
              {
                  if (item.Thread1.Where(x => x.ThreadId == Name).Any())
                  {
                      newlist.Add(item);
                  }


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
              }

              return View();
          
  
      }

  /*public ActionResult Index(string sortOrder)
  {
      ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
      ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";
      var students = from s in db.Students
                     select s;
      switch (sortOrder)
      {
          case "name_desc":
              students = students.OrderByDescending(s => s.LastName);
              break;
          case "Date":
              students = students.OrderBy(s => s.EnrollmentDate);
              break;
          case "date_desc":
              students = students.OrderByDescending(s => s.EnrollmentDate);
              break;
          default:
              students = students.OrderBy(s => s.LastName);
              break;
      }
      return View(students.ToList());
  }*/


/*
private string GetUserProfile()
{

 	
     int userId = Convert.ToInt32(Session["UserId"]);
                        var usr = UserHelper.GetUserId();
              AspNetUser currentUser = db.AspNetUsers.FirstOrDefault(x => x.UserId == usr);
             angulardemoEntities obj = new angulardemoEntities();
           
            if (usr != null)
               
            return;
}*/
        
public  int Id { get; set; }
    
    
        

  private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var user = obj.Users;
            return View(user.ToList());
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
