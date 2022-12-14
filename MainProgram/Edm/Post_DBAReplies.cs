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

    public partial class Post_DBAReplies : IEntityBase
    {
        public Post_DBAReplies()
        {
            this.Post_DBAReplies1 = new HashSet<Post_DBAReplies>();
        }
    
        public int Id { get; set; }
        public int PostDBARId { get; set; }
        public string PostDBARText { get; set; }
        public string PostDBARTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int PostDBAId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string PostDBARSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> Post_DBAReplies_PostDBARId { get; set; }
        public string Reply { get; set; }
        public int TID { get; set; }
        public Nullable<int> AspNetUsers_Id { get; set; }
        public Nullable<int> Post_DBA_Id { get; set; }
        public Nullable<int> Post_DBAReplies2_Id { get; set; }
        public Nullable<int> tbh_Departments_Id { get; set; }
        public Nullable<int> tbh_Language_Id { get; set; }
        public Nullable<int> tbh_SubDepartments_Id { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Post_DBA Post_DBA { get; set; }
        public virtual ICollection<Post_DBAReplies> Post_DBAReplies1 { get; set; }
        public virtual Post_DBAReplies Post_DBAReplies2 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    }
}
