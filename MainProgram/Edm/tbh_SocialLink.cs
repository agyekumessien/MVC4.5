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

    public partial class tbh_SocialLink : IEntityBase
    {
        public int Id { get; set; }
        public int SLinkID { get; set; }
        public Nullable<int> SocialID { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }
        public string FullImageUrl { get; set; }
        public string UrlText { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<int> AddedBy { get; set; }
        public Nullable<System.DateTime> DateAdded { get; set; }
        public Nullable<int> tbh_Social_Id { get; set; }
    
        public virtual tbh_Social tbh_Social { get; set; }
    }
}
