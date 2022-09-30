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

    public partial class Post_Mvc : IEntityBase
    {
        public Post_Mvc()
        {
            this.Post_Mvc1 = new HashSet<Post_Mvc>();
            this.Post_MvcReplies = new HashSet<Post_MvcReplies>();
        }
    
        public int Id { get; set; }
        public int PostMvcId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string PostMvcText { get; set; }
        public string PostMvcTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> Post_Mvc_PostMvcId { get; set; }
        public string PostMvcSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public string Reply { get; set; }
        public int TID { get; set; }
        public Nullable<int> AspNetUsers_Id { get; set; }
        public Nullable<int> Post_Mvc2_Id { get; set; }
        public Nullable<int> tbh_Departments_Id { get; set; }
        public Nullable<int> tbh_Language_Id { get; set; }
        public Nullable<int> tbh_SubDepartments_Id { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual ICollection<Post_Mvc> Post_Mvc1 { get; set; }
        public virtual Post_Mvc Post_Mvc2 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual ICollection<Post_MvcReplies> Post_MvcReplies { get; set; }
    }
}
