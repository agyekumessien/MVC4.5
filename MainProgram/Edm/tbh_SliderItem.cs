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

    public partial class tbh_SliderItem : IEntityBase
    {
        public int Id { get; set; }
        public int SItemID { get; set; }
        public string Title { get; set; }
        public string SubTitle { get; set; }
        public string Details { get; set; }
        public string SliderPicture { get; set; }
        public Nullable<int> SliderID { get; set; }
        public Nullable<int> tbh_Slider_Id { get; set; }
    
        public virtual tbh_Slider tbh_Slider { get; set; }
    }
}