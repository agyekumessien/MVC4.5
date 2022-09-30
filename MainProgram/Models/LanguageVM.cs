using MainProgram.Edm;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MainProgram.Core
{
    public class LanguageVM
    {

        [Key]
        public int LanguageId { get; set; }
        public string LanguageName { get; set; }
        public string LanguageDescription { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_Replies> tbh_Replies { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Thread> Threads { get; set; }
        [NotMapped]
       // public SelectList LanguageList { get; set; }

        public IEnumerable<SelectListItem> LanguageList { get; set; }


        
    }  
 }  