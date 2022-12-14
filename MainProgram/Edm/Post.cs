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

    public partial class Post : IEntityBase
    {
        public Post()
        {
            this.Posts1 = new HashSet<Post>();
            this.tbh_DSReplies = new HashSet<tbh_DSReplies>();
            this.tbh_PostLike = new HashSet<tbh_PostLike>();
        }
    
        public int Id { get; set; }
        public int PostId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string RoleId { get; set; }
        public string PostTitle { get; set; }
        public string PostText { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public int UserId { get; set; }
        public string UserProfile_Id { get; set; }
        public Nullable<int> Post_PostId { get; set; }
        public string PostSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LanguageName { get; set; }
        public string Reply { get; set; }
        public int TID { get; set; }
        public Nullable<int> AspNetUsers_Id { get; set; }
        public Nullable<int> tbh_Departments_Id { get; set; }
        public Nullable<int> tbh_SubDepartments_Id { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual ICollection<Post> Posts1 { get; set; }
        public virtual Post Post1 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual ICollection<tbh_DSReplies> tbh_DSReplies { get; set; }
        public virtual ICollection<tbh_PostLike> tbh_PostLike { get; set; }
    }
}
