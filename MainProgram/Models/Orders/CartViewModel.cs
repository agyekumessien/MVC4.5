using MainProgram.Models.MessageModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;

namespace MainProgram.Models.Orders
{
    public class CartViewModel
    {
        public CartViewModel()
        {
            tbh_Products1 = new Collection<CartItemViewModel>();
        }
        public string Token { get; set; }
        public string UserName { get; set; }
        public ICollection<CartItemViewModel> tbh_Products1 { get; set; }
        public double Total { get { return tbh_Products1.Sum(x => x.Total); } }
        public string CouponId { get; set; }
    }

    public class CartItemViewModel
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string Image { get; set; }
        public string Description { get; set; }
        public double? Price { get; set; }
        public int Quantity { get; set; }
        public double Total { get { return (!Price.HasValue ? 0 : Price.Value) * Quantity; } }
    }
     public class CartResultViewModel : NotifyModel
    {
        public int Amount { get; set; }
        public string Name { get; set; }
    }
}