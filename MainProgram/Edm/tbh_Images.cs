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
    using System;
    using System.Collections.Generic;
    
    public partial class tbh_Images
    {
        public int Id { get; set; }
        public int ImageId { get; set; }
        public byte[] Image { get; set; }
        public int UserId { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public Nullable<int> AspNetUsers_Id { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
    }
}