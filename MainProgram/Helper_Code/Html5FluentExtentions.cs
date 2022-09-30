using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using MainProgram.Helper_Code;

namespace MainProgram.Helper_Code
{
    public static class Html5FluentExtentions
    {
        public static Video FluentVideo(this HtmlHelper helper, string id)
        {
            return new Video(id);
        }
    }
}