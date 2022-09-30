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

    public partial class Search : IEntityBase
    {
        public Search()
        {
            this.Searches1 = new HashSet<Search>();
        }
    
        public int Id { get; set; }
        public int SearchId { get; set; }
        public Nullable<int> DbId { get; set; }
        public Nullable<int> CSId { get; set; }
        public bool IsActive { get; set; }
        public Nullable<int> Search_SearchId { get; set; }
        public Nullable<int> CSharp_Id { get; set; }
        public Nullable<int> Databas_Id { get; set; }
    
        public virtual CSharp CSharp { get; set; }
        public virtual Databa Databa { get; set; }
        public virtual ICollection<Search> Searches1 { get; set; }
        public virtual Search Search1 { get; set; }
    }
}