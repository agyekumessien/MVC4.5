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

    public partial class tbh_Replies : IEntityBase
    {
        public tbh_Replies()
        {
            this.tbh_ReadPost = new HashSet<tbh_ReadPost>();
            this.tbh_Replies1 = new HashSet<tbh_Replies>();
            this.tbh_ReplyLike = new HashSet<tbh_ReplyLike>();
        }
    
        public int Id { get; set; }
        public int ReplyId { get; set; }
        public string ReplyText { get; set; }
        public string ReplyTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int ThreadId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string ReplytSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> tbh_Replies_ReplyId { get; set; }
        public Nullable<int> AspNetUsers_Id { get; set; }
        public Nullable<int> tbh_Departments_Id { get; set; }
        public Nullable<int> tbh_Language_Id { get; set; }
        public Nullable<int> tbh_Replies2_Id { get; set; }
        public Nullable<int> tbh_SubDepartments_Id { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual ICollection<tbh_ReadPost> tbh_ReadPost { get; set; }
        public virtual ICollection<tbh_Replies> tbh_Replies1 { get; set; }
        public virtual tbh_Replies tbh_Replies2 { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual Thread Thread { get; set; }
        public virtual ICollection<tbh_ReplyLike> tbh_ReplyLike { get; set; }
    }
}
