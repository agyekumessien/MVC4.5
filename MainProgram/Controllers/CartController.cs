using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
using MainProgram.Core;
using MainProgram.Edm;
using MainProgram.Models.ShoppingCart;
using MainProgram.Core.Resources;
using MainProgram.Core.Provider;
using MainProgram.Models.Orders;
using MainProgram.Models;
namespace MainProgram.Controllers
{
    public class CartController : Controller
    {
        angulardemoEntities storeDB = new angulardemoEntities();

        // GET: Cart
          public ActionResult Index()
          {
           var data= ShoppingCart.GetCart(this.HttpContext);

              // Set up our ViewModel
              var viewModel = new ShoppingCartViewModel
              {


                  CartItems = data.GetCartItems(),
                  CartTotal = data.GetTotal(),
                 
              };

              // Return the view
              return View(viewModel);
          }

         



          //
          // GET: /Store/AddToCart/5

          public ActionResult AddToCart(int id)
          {
               var data= ShoppingCart.GetCart(this.HttpContext);

              // Retrieve the album from the database
              var addedProduct= storeDB.tbh_Products
                  .Single(product => product.ProductID == id);

              // Add it to the shopping cart
              var cart = ShoppingCart.GetCart(this.HttpContext);
          

              cart.AddToCart(addedProduct);

              // Go back to the main store page for more shopping
              return RedirectToAction("Index");
          }


          [HttpPost]
          public ActionResult UpdateItem(int id)
          {

              var data = ShoppingCart.GetCart(this.HttpContext);

              // Set up our ViewModel
              var viewModel = new ShoppingCartViewModel
              {
                  CartItems = data.GetCartItems(),
                  CartTotal = data.GetTotal(),

              };

              // Return the view
              return View(viewModel);
          }

          [HttpPost]
          public ActionResult Update(FormCollection fc)
          {
              int productId = Convert.ToInt32(fc["productId"]);
              List<ShoppingCartViewModel> cart = (List<ShoppingCartViewModel>)Session["cart"];
              int index = Exists(productId, cart);
              cart[index].Quantity = Convert.ToInt32(fc["quantity"]);
              Session["cart"] = cart;
              return RedirectToAction("Index");
          }

          private int Exists(int productId, List<ShoppingCartViewModel> cart)
          {
              for (int i = 0; i < cart.Count; i++)
              {
                  if (cart[i].product.ProductID == productId)
                  {
                      return i;
                  }
              }
              return -1;
          }




          public ActionResult AddItem(int id)
          {
                      // Remove the item from the cart
              var cart = ShoppingCart.GetCart(this.HttpContext);

               var data = new ShoppingCartViewModel();

                // update from cart
              int itemCount = cart.UpdateItem();
            
              if (data != null)


                     if (data.CartItems.Any(a => a.ProductID == id))
                {
                     data.CartItems.First(a => a.ProductID == id).Quantity++;
                }
                

              
              // Display the confirmation message
              var results = new ShoppingCartViewModel
              {

                  
                  ItemCount = itemCount

              };


              return Json(results);
          }

       /*  [HttpPost]
          public ActionResult Update(FormCollection fc)
          {
              int productId = Convert.ToInt32(fc["productId"]);
              List<Item> cart = (List<Item>)Session["cart"];
              int index = Exists(productId, cart);
              cart[index].quantity = Convert.ToInt32(fc["quantity"]);
              Session["cart"] = cart;
              return RedirectToAction("Index");
          }*/


          // AJAX: /ShoppingCart/RemoveFromCart/5

          [HttpPost]
          public ActionResult RemoveFromCart(int id)
          {
              // Remove the item from the cart
              var cart = ShoppingCart.GetCart(this.HttpContext);

              // Get the name of the album to display confirmation
              string productName = storeDB.Carts
                  .Single(item => item.RecordId == id).tbh_Products.Name;

              // Remove from cart
              int itemCount = cart.RemoveFromCart(id);

              // Display the confirmation message
              var results = new ShoppingCartRemoveViewModel
              {
                  Message = Server.HtmlEncode(productName) +
                      " has been removed from your shopping cart.",
                  CartTotal = cart.GetTotal(),
                  CartCount = cart.GetCount(),
                  ItemCount = itemCount,
                  DeleteId = id
              };

              return Json(results);
          }

          //
          // GET: /ShoppingCart/CartSummary

          [ChildActionOnly]
          public ActionResult CartSummary()
          {
              var cart = ShoppingCart.GetCart(this.HttpContext);

              ViewData["CartCount"] = cart.GetCount();

              return PartialView("CartSummary");
          }
    }
}