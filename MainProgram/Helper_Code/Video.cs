using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using MainProgram.Helper_Code;

namespace MainProgram.Helper_Code
{
    public class Video : IHtmlString
    {
        private string _id, _mp4Path, _WebmPath, _ogvPath;
        private bool _controls;
        private int _width, _height;


        public Video(String id)
        {
            this._id = id;
        }

        public Video mp4(string mp4Path)
        {
            this._mp4Path = mp4Path;
            return this;
        }

        public Video Webm(string WebmPath)
        {
            this._WebmPath = WebmPath;
            return this;
        }

        public Video ogg(string ogvPath)
        {
            this._ogvPath = ogvPath;
            return this;
        }
        public Video controls(bool controls)
        {
            this._controls = controls;
            return this;
        }

        public Video width(int width)
        {
            this._width = width;
            return this;
        }

        public Video height(int height)
        {
            this._height = height;
            return this;
        } 
        
        
       public string ToHtmlString()
        {
            StringBuilder tagBuilder = new StringBuilder();
            tagBuilder.AppendFormat("<Video id='{0} width={1} height={2} {3}>", _id, _width, _height,
                _controls ? "controls='controls'" : "");
            tagBuilder.AppendLine();
            if (!_mp4Path.IsNullOrEmpty())
            {
                tagBuilder.AppendFormat("<source src='{0}' type='video/mp4' />", _mp4Path);
            }
            if (!_WebmPath.IsNullOrEmpty())
            {
                tagBuilder.AppendFormat("<source src='{0}' type='video/Webm />", _WebmPath);
            }
             if (!_ogvPath.IsNullOrEmpty())
            {
                tagBuilder.AppendFormat("<source src='{0}' type='video/ogg' />", _ogvPath);
            }
            tagBuilder.AppendLine();
            tagBuilder.Append("</Video>");
            tagBuilder.AppendLine();


          

            return new HtmlString(tagBuilder.ToString()).ToHtmlString();


        }


    }
}
