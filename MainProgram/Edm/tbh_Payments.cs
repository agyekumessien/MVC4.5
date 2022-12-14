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

    public partial class tbh_Payments : IEntityBase
    {
        public tbh_Payments()
        {
            this.tbl_Order = new HashSet<tbl_Order>();
        }
    
        public int Id { get; set; }
        public int PaymentID { get; set; }
        public int Type { get; set; }
        public Nullable<decimal> CreditAmount { get; set; }
        public Nullable<decimal> DebitAmount { get; set; }
        public Nullable<decimal> Balance { get; set; }
        public Nullable<System.DateTime> PaymentDateTime { get; set; }
        public Nullable<int> tbh_PaymentTypes_Id { get; set; }
    
        public virtual tbh_PaymentTypes tbh_PaymentTypes { get; set; }
        public virtual ICollection<tbl_Order> tbl_Order { get; set; }
    }
}
