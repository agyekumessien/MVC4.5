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

    public partial class tbh_Slider : IEntityBase
    {
        public tbh_Slider()
        {
            this.tbh_SliderItem = new HashSet<tbh_SliderItem>();
        }
    
        public int Id { get; set; }
        public int SliderID { get; set; }
        public string Name { get; set; }
    
        public virtual ICollection<tbh_SliderItem> tbh_SliderItem { get; set; }
    }
}
