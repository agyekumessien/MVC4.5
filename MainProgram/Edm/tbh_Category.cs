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

    public partial class tbh_Category : IEntityBase
    {
        public tbh_Category()
        {
            this.genPromoRights = new HashSet<genPromoRight>();
            this.tbh_Category1 = new HashSet<tbh_Category>();
            this.tbh_Products = new HashSet<tbh_Products>();
            this.tbh_SubCategory = new HashSet<tbh_SubCategory>();
        }
    
        public int Id { get; set; }
        public int CategoryID { get; set; }
        public string Name { get; set; }
        public Nullable<int> ParentId { get; set; }
        public string MenuUrl { get; set; }
        public byte[] CatImage { get; set; }
        public string FullImageUrl { get; set; }
        public string MenuIcon { get; set; }
        public Nullable<int> SortOrder { get; set; }
        public Nullable<System.DateTime> DateAdded { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> Status { get; set; }
        public string Ancestor { get; set; }
        public string cartoon { get; set; }
        public Nullable<int> tbh_Category2_Id { get; set; }
    
        public virtual ICollection<genPromoRight> genPromoRights { get; set; }
        public virtual ICollection<tbh_Category> tbh_Category1 { get; set; }
        public virtual tbh_Category tbh_Category2 { get; set; }
        public virtual ICollection<tbh_Products> tbh_Products { get; set; }
        public virtual ICollection<tbh_SubCategory> tbh_SubCategory { get; set; }
    }
}
