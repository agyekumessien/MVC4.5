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

    public partial class genPromoRight : IEntityBase
    {
        public int Id { get; set; }
        public int PromoRightID { get; set; }
        public Nullable<int> CategoryID { get; set; }
        public string ImageURL { get; set; }
        public string AltText { get; set; }
        public string OfferTag { get; set; }
        public string Title { get; set; }
        public Nullable<bool> isDeleted { get; set; }
        public Nullable<int> tbh_Category_Id { get; set; }
    
        public virtual tbh_Category tbh_Category { get; set; }
    }
}
