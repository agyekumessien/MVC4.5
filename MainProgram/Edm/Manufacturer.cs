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

    public partial class Manufacturer : IEntityBase
    {
        public Manufacturer()
        {
            this.tbh_Products = new HashSet<tbh_Products>();
        }
    
        public int Id { get; set; }
        public string Logo { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    
        public virtual ICollection<tbh_Products> tbh_Products { get; set; }
    }
}
