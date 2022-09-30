using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;

using MainProgram.Core.Resources;
using MainProgram.Core.Provider;
using MainProgram.Models.Orders;
using MainProgram.Edm;
using MainProgram.Models.ShoppingCart;

namespace MainProgram.Controllers
{
    public class OrdersController : Controller
    {
        angulardemoEntities obj = new angulardemoEntities();

        // GET: Orders
        public ActionResult Index()
        {
            return View();
        }

[HttpGet]
        public ActionResult ViewCart()
        {
            try
            {
                var model = Session[Constants.CookieCart] = GetCartItems();
                return View(model ?? new tbh_Products());
            }
            catch (Exception)
            {

                return View(new tbh_Products());
            }

        }





        private tbh_Products GetCartItems()
        {
            var cartItems = GetSessionCart();
            var cartResult = new tbh_Products();
            if (cartItems != null)
            {
                
               /* cartItems.UserName = User.Identity.Name; Put Security here*/
                foreach (var item in cartItems.tbh_Products1)
                {
                    var product = obj.tbh_Products.Where(x => x.ProductID.Equals(item.ProductID));
                    if (product == null) continue;
                    var img = obj.tbh_Products.Where(x => x.FullImageUrl.Equals(item.FullImageUrl.FirstOrDefault()));
                 
                    if (img == null)
                    {
                        var models = img.Select(a => new tbh_Products()
                        {

                            FullImageUrl = Path.Combine(Server.MapPath("/Content/img/Books/"), a.FullImageUrl),

                        });

                        var model = img.Select(a => new tbh_Products()
                        
                        {
                            Quantity = item.Quantity,
                            ProductID = item.ProductID,
                            UnitPrice = Convert.ToDecimal(item.UnitPrice),
                           
                        });
                    }
                }

            }
  return cartResult;
        }


        protected tbh_Products GetSessionCart()
        {
            var cartObj = Session[Constants.CookieCart];
            tbh_Products cart = null;
            try
            {
                if (cartObj != null) cart = (tbh_Products)cartObj;
            }
            catch (Exception)
            {
                return new tbh_Products();
            }
            return cart ?? new tbh_Products();
        }

	};
   }

    
