using MainProgram.Edm;
using MainProgram.Models.ShoppingCart;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;

namespace MainProgram.Models.ShoppingCart
{
    public class ShoppingCartViewModel
    {

        public List<Cart> CartItems { get; set; }
        public decimal CartTotal { get; set; }
        public List<tbl_Order> OrderItems { get; set; }
        public List<tbh_Coupon> CouponItems { get; set; }
        public decimal Discount { get; set; }
        public double? Price { get; set; }
        public string ProductName { get; set; }
        public string Image { get; set; }
        public string Description { get; set; }

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Street { get; set; }
        public int Quantity { get; set; }
        public tbh_Products product { get; set; }
        public int quantity { get; set; }
       public decimal Total { get;  set; }
      
        public int CartCount { get; set; }
        public int ItemCount { get; set; }
        public int DeleteId { get; set; }
    }
}

public class CartViewModel
{



    public List<ShoppingCartViewModel> Items { get; set; }
    public decimal Total
    {
        get
        {
            return Items.Sum(x => x.CartCount);

        }

    }
}

