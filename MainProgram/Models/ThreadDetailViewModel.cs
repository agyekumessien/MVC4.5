using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MainProgram.Migrations;
using System.ComponentModel.DataAnnotations;
using System.Threading;


namespace MainProgram.Models
{
    public class ThreadDetailViewModel
    {
        public ThreadVM Thread { get; set; }

        public ThreadVM NewPost { get; set; }
    }
}