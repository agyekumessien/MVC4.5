//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MainProgram.Edm
{
    using MainProgram.Core.Data;
    using System;
    using System.Collections.Generic;

    public partial class tbh_Coupon : IEntityBase
    {
        public tbh_Coupon()
        {
            this.tbl_Order = new HashSet<tbl_Order>();
        }
    
        public int Id { get; set; }
        public string CouponID { get; set; }
        public int UserId { get; set; }
        public decimal Discount { get; set; }
        public bool Status { get; set; }
        public System.DateTime Start_Date { get; set; }
        public System.DateTime End_Date { get; set; }
        public Nullable<int> AspNetUser_Id { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual ICollection<tbl_Order> tbl_Order { get; set; }
    }
}