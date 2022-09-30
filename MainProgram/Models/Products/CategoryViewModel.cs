using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MainProgram.Controllers
{
    public class CategoryViewModel
    {


        public int CategoryID { get; set; }
        public string Name { get; set; }
        public Nullable<int> ParentId { get; set; }
        public string MenuUrl { get; set; }


        public Nullable<int> SortOrder { get; set; }
        public Nullable<System.DateTime> DateAdded { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> Status { get; set; }
        public string Ancestor { get; set; }

        public string MenuIcon { get; set; }
        [DisplayName("Upload File")]
        public HttpPostedFileBase ImageFile { get; set; }


        [StringLength(20, ErrorMessage = "{21} characters too long.")]
        [Display(Name = "CatImage")]
        public byte[] CatImage { get; set; }
    }
}