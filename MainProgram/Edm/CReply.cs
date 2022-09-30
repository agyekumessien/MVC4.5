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

    public partial class CReply : IEntityBase
    {
        public CReply()
        {
            this.CReplies1 = new HashSet<CReply>();
        }
    
        public int Id { get; set; }
        public int CRId { get; set; }
        public string CRText { get; set; }
        public string CRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int CId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string CRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> CReplies_CRId { get; set; }
        public string Reply { get; set; }
        public int TID { get; set; }
        public Nullable<int> AspNetUsers_Id { get; set; }
        public Nullable<int> CReplies2_Id { get; set; }
        public Nullable<int> tbh_Departments_Id { get; set; }
        public Nullable<int> tbh_Language_Id { get; set; }
        public Nullable<int> tbh_SubDepartments_Id { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual C C { get; set; }
        public virtual ICollection<CReply> CReplies1 { get; set; }
        public virtual CReply CReply1 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    }
}
