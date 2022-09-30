using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.Models
{
    public class tblVideo
    {
        public int id { get; set; }
        public string Name { get; set; }
        public string ContentType { get; set; }
        public byte Data { get; set; }
        public Nullable<int> FileSize { get; set; }
        public string FilePath { get; set; }  

    }
}