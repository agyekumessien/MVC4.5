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

    public partial class CSharp : IEntityBase
    {
        public CSharp()
        {
            this.CSharps1 = new HashSet<CSharp>();
            this.CSReplies = new HashSet<CSReply>();
            this.Searches = new HashSet<Search>();
        }
    
        public int Id { get; set; }
        public int CSId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string CSharpText { get; set; }
        public string CSharpTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> CSharp_CSId { get; set; }
        public string CSharpSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public string Reply { get; set; }
        public int TID { get; set; }
        public Nullable<int> AspNetUsers_Id { get; set; }
        public Nullable<int> CSharp2_Id { get; set; }
        public Nullable<int> tbh_Departments_Id { get; set; }
        public Nullable<int> tbh_Language_Id { get; set; }
        public Nullable<int> tbh_SubDepartments_Id { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual ICollection<CSharp> CSharps1 { get; set; }
        public virtual CSharp CSharp1 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual ICollection<CSReply> CSReplies { get; set; }
        public virtual ICollection<Search> Searches { get; set; }
    }
}
