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

    public partial class Student : IEntityBase
    {
        public int Id { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public int feesPaid { get; set; }
        public string gender { get; set; }
        public string emailId { get; set; }
        public string telephoneNumber { get; set; }
        public System.DateTime dateOfBirth { get; set; }
        public bool isActive { get; set; }
        public System.DateTime creationDate { get; set; }
        public System.DateTime lastModifiedDate { get; set; }
    }
}
