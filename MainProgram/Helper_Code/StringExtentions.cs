using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.Helper_Code
{
    public  static class StringExtentions
    {
        public static bool IsNullOrEmpty(this string source)
        {
            return string.IsNullOrEmpty(source);
        }
    }
}