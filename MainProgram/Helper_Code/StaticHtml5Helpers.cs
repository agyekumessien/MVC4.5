using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using MainProgram.Helper_Code;

namespace MainProgram.Helper_Code
{
    public class StaticHtml5Helpers
    {
        public static MvcHtmlString Video(string id, string mp4Path, string WebmPath = null, string ogvPath = null,
                                         bool needsControls = true, int width = 500, int height = 200)
        {
            StringBuilder tagBuilder = new StringBuilder();
            tagBuilder.AppendFormat("<video id='{0}' width={1} height={2} {3}>", id, width, height,
                needsControls ? "controls='controls'" : "");
            tagBuilder.AppendLine();
            if (!mp4Path.IsNullOrEmpty())
            {
                tagBuilder.AppendFormat("<source src='{0}' type='video/mp4' />", mp4Path);
            }
            if (!WebmPath.IsNullOrEmpty())
            {
                tagBuilder.AppendFormat("<source src='{0}' type='video/Webm' />", WebmPath);
            }
            if (!ogvPath.IsNullOrEmpty())
            {
                tagBuilder.AppendFormat("<source src='{0}' type='video/ogg' />", ogvPath);
            }
            tagBuilder.AppendLine();
            tagBuilder.Append("</video>");
            tagBuilder.AppendLine();


            return new MvcHtmlString(tagBuilder.ToString());

        }
    }
}