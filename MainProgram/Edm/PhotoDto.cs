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

    public partial class PhotoDto : IEntityBase
    {
        public int Id { get; set; }
        public string Url { get; set; }
        public bool IsMain { get; set; }
        public bool IsApproved { get; set; }
        public Nullable<int> MembersDto_Id { get; set; }
        public Nullable<int> tbh_Membership_Id { get; set; }
    
        public virtual MembersDto MembersDto { get; set; }
        public virtual tbh_Membership tbh_Membership { get; set; }
    }
}
