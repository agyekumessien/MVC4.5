using MainProgram.Edm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.Core.ModelService
{
    public class tbh_ImageModel
    {
 public int ImageId { get; set; }
        
        public int UserId { get; set; }
        public string FullImageUrl { get; set; }
        public byte[] Image { get; set; }
        public bool IsActive { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
    }
    }
