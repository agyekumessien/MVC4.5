using MainProgram.Core.Provider;
using MainProgram.Models.Orders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MainProgram.Controllers
{
    public class BaseController : Controller
    {
        // GET: Base
        public ActionResult Index()
        {
            return View();
        }

          protected CartViewModel GetSessionCart()
        {
            var cartObj = Session[Constants.CookieCart];
            CartViewModel cart = null;
            try
            {
                if (cartObj != null) cart = (CartViewModel)cartObj;
            }
            catch (Exception)
            {
                return new CartViewModel();
            }
            return cart ?? new CartViewModel();
        }

	}
    
}