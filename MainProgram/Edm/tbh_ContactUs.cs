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

    public partial class tbh_ContactUs : IEntityBase
    {
        public int Id { get; set; }
        public decimal ContactUsID { get; set; }
        public int UserId { get; set; }
        public string Subject { get; set; }
        public string name { get; set; }
        public string emailid { get; set; }
        public Nullable<decimal> phone { get; set; }
        public string message { get; set; }
        public Nullable<System.DateTime> messagedate { get; set; }
        public string FileName { get; set; }
        public string Upload { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string ContentType { get; set; }
        public byte[] Content { get; set; }
        public int FileType { get; set; }
        public Nullable<int> AspNetUser_Id { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
    }
}
