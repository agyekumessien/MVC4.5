using MainProgram.Edm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.Models.ShoppingCart
{
    public class ShoppingCartDetailsViewModel
    {
        public List<Cart> CartItems { get; set; }
        public List<Cart> ShipItems { get; set; }
        public List<AspNetUser> UserItems{ get; set; }
        public decimal CartTotal { get; set; }
        public string Token { get; set; }

        public double Total { get { return CartItems.Sum(x => Convert.ToDouble(x.tbh_Products.UnitPrice)); } }
        public string CouponId { get; set; }
    }
}