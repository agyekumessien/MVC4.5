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

    public partial class tbl_Order 
    {
        public tbl_Order()
        {
            this.tbh_OrderDetails = new HashSet<tbh_OrderDetails>();
            this.tbl_Order1 = new HashSet<tbl_Order>();
        }
    
        public int OrderId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> PaymentID { get; set; }
        public Nullable<int> ShippingID { get; set; }
        public string CouponID { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public bool IsActive { get; set; }
        public Nullable<int> tbl_Order_OrderId { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public string ShippingMethod { get; set; }
        public Nullable<decimal> SubTotal { get; set; }
        public Nullable<decimal> Shipping { get; set; }
        public string Street { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string DeliveryMethod { get; set; }
        public Nullable<System.DateTime> ShippedDate { get; set; }
        public string TransactionID { get; set; }
        public string TrackingID { get; set; }
        public Nullable<int> Discount { get; set; }
        public Nullable<int> Taxes { get; set; }
        public Nullable<decimal> TotalAmount { get; set; }
        public Nullable<bool> isCompleted { get; set; }
        public Nullable<System.DateTime> OrderDate { get; set; }
        public Nullable<bool> DIspatched { get; set; }
        public Nullable<System.DateTime> DispatchedDate { get; set; }
        public Nullable<bool> Shipped { get; set; }
        public Nullable<System.DateTime> ShippingDate { get; set; }
        public Nullable<bool> Deliver { get; set; }
        public Nullable<System.DateTime> DeliveryDate { get; set; }
        public string Notes { get; set; }
        public Nullable<bool> CancelOrder { get; set; }
        public Nullable<int> AspNetUser_Id { get; set; }
        public Nullable<int> tbh_Coupon_Id { get; set; }
        public Nullable<int> tbh_Departments_Id { get; set; }
        public Nullable<int> tbh_Payments_Id { get; set; }
        public Nullable<int> tbh_ShippingDetails_Id { get; set; }
        public Nullable<int> tbh_SubDepartments_Id { get; set; }
        public Nullable<int> tbl_Order2_OrderId { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Coupon tbh_Coupon { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual ICollection<tbh_OrderDetails> tbh_OrderDetails { get; set; }
        public virtual tbh_Payments tbh_Payments { get; set; }
        public virtual tbh_ShippingDetails tbh_ShippingDetails { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual ICollection<tbl_Order> tbl_Order1 { get; set; }
        public virtual tbl_Order tbl_Order2 { get; set; }
    }
}
