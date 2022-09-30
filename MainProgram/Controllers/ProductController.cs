using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web.Mvc;
using MainProgram.Core;
using MainProgram.Edm;
using System.IO;
using System.Collections.Generic;
using System.Text;
using System.Net.Mail;


using System.Net;
using System.Threading.Tasks;
using System.Configuration;
using MainProgram.Helper_Code;
using System.Drawing.Drawing2D;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System.Web;

using System.Data.SqlClient;
using System.Data;
using MainProgram.Core.Provider;
using Microsoft.AspNet.Identity;

using PagedList;
using PagedList.Mvc;
using System;




namespace MainProgram.Controllers
{
    public class ProductController : Controller
    {


        private angulardemoEntities obj = new angulardemoEntities();


        // GET: Product
        public ActionResult Index(string categoryName, string categoryItem)
        {
            ViewBag.TopRatedProducts = TopSoldProducts();
            ViewBag.RecentViewsProducts = RecentViewProducts();

            ViewBag.Categories = obj.tbh_Category.Select(x => categoryName + x.Name).ToList();

            ViewBag.Categories = obj.tbh_Category.Select(x => x.Name).ToList();
            ViewBag.CategoryImg = obj.tbh_Category.Select(x => x.CatImage).ToList();
            ViewBag.Ideas = obj.tbh_Pages.Where(x => x.Name.Equals("Ideas")).ToList();



           // ViewBag.Wms = obj.tbh_Products.Where(x => x.MenuIcon.Equals("Women")).ToList();

          //  ViewBag.Bks = obj.tbh_Products.Where(x => x.MenuIcon.Equals("Books")).ToList();
           
            return View();
        }


        public ActionResult GetProductsByCategory(string categoryName, int? page)
        {
            ViewBag.TopRatedProducts = TopSoldProducts();
            ViewBag.RecentViewsProducts = RecentViewProducts();


            ViewBag.Categories = obj.tbh_Category.Select(x => x.Name).ToList();
            ViewBag.CategoryImg = obj.tbh_Category.Select(x => x.MenuUrl).ToList();
          
            var prods = obj.tbh_Products.Where(x => x.tbh_Category.Name == categoryName).ToList();
            return View("Product", prods.ToPagedList(page ?? 1, 9));

        }



   




        // GET: Product
        public ActionResult Product(int subCatID)
        {
           
           // ViewBag.Bks = obj.tbh_Products.Where(x => x.MenuIcon.Equals("Books")).ToList();

            ViewBag.RecentViewsProducts = RecentViewProducts();


            ViewBag.Categories = obj.tbh_Category.Select(x => x.Name).ToList();
            var prods = obj.tbh_Products.Where(y => y.SubCategoryID == subCatID).ToList();
            return View(prods);
        }


        public ActionResult GetCategoryByImage(string categoryImage, int? page)
        {
           


            ViewBag.Categories = obj.tbh_Category.Select(x => x.Name).ToList();
            ViewBag.CategoryImg = obj.tbh_Category.Select(x => x.FullImageUrl).ToList();

            var imgs = obj.tbh_Category.Where(x => x.FullImageUrl== categoryImage).ToList();
            return View("Category", imgs.ToPagedList(page ?? 1, 9));

        }


        public ActionResult Category(int subCatID)
        {

           // ViewBag.Bks = obj.tbh_Products.Where(x => x.MenuIcon.Equals("Books")).ToList();

            ViewBag.Categories = obj.tbh_Category.Select(x => x.Name).ToList();
            var prods = obj.tbh_Products.Where(y => y.SubCategoryID == subCatID).ToList();
            return View(prods);
        }


        //  Upload categories
        [AllowAnonymous]
        public ActionResult UploadCatImage()
        {
            return View();
        }


      
     //   [HttpPost]
     //   [AllowAnonymous]
     //   [ValidateAntiForgeryToken]
      //  public ActionResult UploadCatImage([Bind(Exclude = "CatImage")]CategoryViewModel model)
       // {
       //     if (ModelState.IsValid)
        //    {
        //        using (var db = new angulardemoEntities())
         //       {
          //          // To convert the user uploaded Photo as Byte Array before save to DB 
          //          byte[] imageData = null;
            //        if (Request.Files.Count > 0)
            //        {
            //            HttpPostedFileBase poImgFile = Request.Files["CatImage"];

             //           using (var binary = new BinaryReader(poImgFile.InputStream))
               //         {
                //            imageData = binary.ReadBytes(poImgFile.ContentLength);
                 //       }
                  //  }

                  //  var img = new tbh_Category { Name = model.Name};
                //    img.CatImage = imageData;
                 //   db.tbh_Category.Add(img);
                //    db.SaveChanges();
                 //   return RedirectToAction("Index", "Home");
               // }
             //   }

                // If we got this far, something failed, redisplay form

             //   return View(model);
          //  }


        // Upload categories
        [AllowAnonymous]
        public ActionResult CreateCategory()
        {
            return View();
        }



        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult CreateCategory([Bind(Exclude = "CatImage")]CategoryViewModel model)
        {
            if (ModelState.IsValid)
            {
                using (var db = new angulardemoEntities())
                {
                    // To convert the user uploaded Photo as Byte Array before save to DB 
                    byte[] imageData = null;
                    if (Request.Files.Count > 0)
                    {
                        HttpPostedFileBase poImgFile = Request.Files["CatImage"];

                        using (var binary = new BinaryReader(poImgFile.InputStream))
                        {
                            imageData = binary.ReadBytes(poImgFile.ContentLength);
                        }
                    }

                    var img = new tbh_Category { Name = model.Name };
                    img.CatImage = imageData;
                    db.tbh_Category.Add(img);
                    db.SaveChanges();
                    return RedirectToAction("Index", "Home");
                }
            }

            // If we got this far, something failed, redisplay form

            return View(model);
        }





        //RECENT VIEWS PRODUCTS
        public IEnumerable<tbh_Products> RecentViewProducts()
        {
            if (TempShpData.UserId > 0)
            {
                var top3Products = (from recent in obj.tbh_RecentlyViews
                                    where recent.UserId == TempShpData.UserId
                                    orderby recent.ViewDate descending
                                    select recent.ProductID).ToList().Take(3);

                var recentViewProd = obj.tbh_Products.Where(x => top3Products.Contains(x.ProductID));
                return recentViewProd;
            }
            else
            {
                var prod = (from p in obj.tbh_Products
                            select p).OrderByDescending(x => x.UnitPrice).Take(3).ToList();
                return prod;
            }
        }


        //ADD RECENT VIEWS PRODUCT IN DB
        public void AddRecentViewProduct(int pid)
        {
            if (TempShpData.UserId > 0)
            {
                tbh_RecentlyViews Rv = new tbh_RecentlyViews();
                Rv.UserId = TempShpData.UserId;
                Rv.ProductID = pid;
                Rv.ViewDate = DateTime.Now;
                obj.tbh_RecentlyViews.Add(Rv);
                obj.SaveChanges();
            }
        }

        //TOP SOLD PRODUCTS
        public List<TopSoldProduct> TopSoldProducts()
        {
            var prodList = (from prod in obj.tbh_OrderDetails
                            select new { prod.ProductID, prod.Quantity } into p
                            group p by p.ProductID into g
                            select new
                            {
                                pID = g.Key,
                                sold = g.Sum(x => x.Quantity)
                            }).OrderByDescending(y => y.sold).Take(3).ToList();



            List<TopSoldProduct> topSoldProds = new List<TopSoldProduct>();

            for (int i = 0; i < 3; i++)
            {
                topSoldProds.Add(new TopSoldProduct()
                {
                    product = obj.tbh_Products.Find(prodList[i].pID),
                    CountSold = Convert.ToInt32(prodList[i].sold)
                });
            }
            return topSoldProds;
        }
        
      
    }
}
