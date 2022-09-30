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
using MainProgram.Models.Search;
using MainProgram.BusinessLogic;

namespace MainProgram.Controllers
{
    public class SearchController : Controller
    {

        angulardemoEntities obj = new angulardemoEntities();

        SearchVM db = new SearchVM();


        // GET: Search
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

            var posts = from s in db.postThread
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

            string categories = Request.QueryString.Get("searchString");



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

            ViewBag.categories = categories;
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(posts.ToPagedList(pageNumber, pageSize));
          


        }
        //[Authorize(Roles = "SuperAdmin")]

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


//1
        public ActionResult CSharpIndex(CSharpSearchModel searchModel)
        {
            var business = new BLContext();
            var model = business.GetCSharp(searchModel);

            return View(model);
        }

//2
        public ActionResult DotNetIndex(DotNetSearchModel searchModel, string sortOrder, string currentFilter, string searchString )
                {
                      var business = new BLContext();
                       var model = business.GetDotNet(searchModel);

             //string DotNetCat = Request.QueryString.Get("searchString");
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
          
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchModel;

            var posts = from s in obj.DotNets
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.DotNetTitle.Contains(searchString)
                                       || s.DotNetText.Contains(searchString));
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

            
            return View(model);
               }


//3
        public ActionResult SqlServerIndex(SqlServerSearchModel searchModel)
        {
            var business = new BLContext();
            var model = business.GetSqlServer(searchModel);

            return View(model);
        }





//4
        public ActionResult CSSIndex(CSSSearchModel searchModel)
        {
            var business = new BLContext();
            var model = business.GetCSS(searchModel);

            return View(model);
        }


//5
        public ActionResult EntityFIndex(EntityFSearchModel searchModel)
        {
            var business = new BLContext();
            var model = business.GetEntityF(searchModel);

            return View(model);
        }


//6
        public ActionResult JqJaIndex(JqJavaSearchModel searchModel)
        {
            var business = new BLContext();
            var model = business.GetJqJava(searchModel);

            return View(model);
        }


//7
        public ActionResult AspWebFIndex(AspWebformSearchModel searchModel)
        {
            var business = new BLContext();
            var model = business.GetAspWebF(searchModel);

            return View(model);
        }





//8

        public ActionResult DBAIndex(DBASearhModel searchModel)
        {
            var business = new BLContext();
            var model = business.GetDBA(searchModel);

            return View(model);
        }


 //9
        public ActionResult MVCIndex(MVCSearchModel searchModel)
        {
            var business = new BLContext();
            var model = business.GetMVC(searchModel);

            return View(model);
        }


     }

}