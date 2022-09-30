using MainProgram.Edm;
using MainProgram.Models.ShoppingCart;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using MainProgram.Core;
using System.Data.Entity.Infrastructure;

namespace MainProgram.Controllers
{
    public class CheckoutController : Controller
    {

        angulardemoEntities storeDB = new angulardemoEntities();
        const string PromoCode = "FREE";

        //
        // GET: /Checkout/AddressAndPayment
        [Authorize]
        public ActionResult AddressAndPayment()
        {
            return View();
        }



        //
        // POST: /Checkout/AddressAndPayment
        // [Authorize]
        [HttpPost]
        public ActionResult AddressAndPayment(tbl_Order order)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            // if (user == null)
            // {
            //     return RedirectToAction("Login", "Account");
            // }


            if (ModelState.IsValid)
            {


                order.UserId = Convert.ToInt32(user);
                order.CreatedOn = DateTime.Now;


                //Save Order
                storeDB.tbl_Order.Add(order);
                storeDB.SaveChanges();


                return RedirectToAction("OrderDetail", "Checkout");
            }





            ModelState.Clear();







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





        [Authorize]
        public ActionResult UserInformation()
        {
            return View();
        }

        //
        // POST: /Checkout/AddressAndPayment
        [Authorize]
        [HttpPost]
        public ActionResult UserInformation(tbl_Order order, FormCollection values)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }

            // Your code...
            // Could also be before try if you know the exception occurs in SaveChanges
            try
            {

            if (ModelState.IsValid)
            {
                TryUpdateModel(order);
                //judge PromoCode
                if (!string.Equals(values["PromoCode"], PromoCode, StringComparison.OrdinalIgnoreCase))
                {
                    return View(order);
                }
                else
                {

                    order.UserId = Convert.ToInt32(user);
                    order.CreatedOn = DateTime.Now;


                    //Save Order
                    storeDB.tbl_Order.Add(order);
                    storeDB.SaveChanges();


                    return RedirectToAction("OrderDetail", "Checkout");
                }

            }
            ModelState.Clear();


            }
            catch (RetryLimitExceededException /* dex */)
            {
                //Log the error (uncomment dex variable name and add a line here to write a log.
                ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your system administrator.");
            }

            return RedirectToAction("Index");
        }






        public ActionResult OrderDetail()
        {
            var cart = ShoppingCart.GetCart(this.HttpContext);

            // Set up our ViewModel
            var viewModel = new ShoppingCartViewModel
            {
                CartItems = cart.GetCartItems(),
                CartTotal = cart.GetTotal(),
                OrderItems = cart.GetOrderItems(),
                CouponItems = cart.GetCouponItems(),
            };





            // Return the view
            return View(viewModel);
        }




        /* public ActionResult OrderDetail(tbh_OrderDetails entity)
         {
               var cart = ShoppingCart.GetCart(this.HttpContext);
             if (cart == null) { return RedirectToAction("Index", "Cart"); }
             if (cart == null) { return RedirectToAction("Index", "Cart"); }
             var viewModel = storeDB.tbh_OrderDetails.Select(a => new ShoppingCartViewModel()
           
             {
               
               
            
                  CartItems = cart.GetCartItems(),
                 CartTotal = cart.GetTotal(),
                  OrderItems = cart.GetOrderItems(),
                   CouponItems = cart.GetCouponItems(),

                     Price = entity.UnitPrice,
                     Quantity = entity.Quantity,
                     ProductName = entity.tbh_Products.Name,
                     Description = entity.tbh_Products.ShortDescription,
                     Image = entity.tbh_Products.FullImageUrl,
                 }).ToList();


             return View(viewModel);
         }*/


        //
        // POST: /Checkout/AddressAndPayment

        /*   [HttpPost]
           public ActionResult AddressAndPayment(FormCollection values)
           {
               var order = new tbh_Orders();
               TryUpdateModel(order);

               try
               {
                   if (string.Equals(values["PromoCode"], PromoCode,
                       StringComparison.OrdinalIgnoreCase) == false)
                   {
                       return View(order);
                   }
                   else
                   {
                       order.AspNetUser.UserName = User.Identity.Name;
                       order.OrderDate = DateTime.Now;

                       //Save Order
                       storeDB.tbh_Orders.Add(order);
                       storeDB.SaveChanges();

                       //Process the order
                       var cart = ShoppingCart.GetCart(this.HttpContext);
                       cart.CreateOrder(order);

                       return RedirectToAction("Complete",
                           new { id = order.OrderID });
                   }

               }
               catch
               {
                   //Invalid - redisplay with errors
                   return View(order);
               }
           }

           //
           // GET: /Checkout/Complete

           public ActionResult Complete(int id)
           {
               // Validate customer owns this order
               bool isValid = storeDB.tbh_Orders.Any(
                   o => o.OrderID == id &&
                   o.AspNetUser.UserName == User.Identity.Name);

               if (isValid)
               {
                   return View(id);
               }
               else
               {
                   return View("Error");
               }
           }
       }*/
    }
}