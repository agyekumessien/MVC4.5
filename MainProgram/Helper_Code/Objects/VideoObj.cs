//-----------------------------------------------------------------------
// <copyright file="ImgObj.cs" company="None">
//     Copyright (c) Allow to distribute this code and utilize this code for personal or commercial purpose.
// </copyright>
// <author>Asma Khalid</author>
//-----------------------------------------------------------------------

namespace MainProgram.Helper_Code.Objects
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;

    /// <summary>
    /// Image object class.
    /// </summary>
    public class VideoObj
    {
        #region Properties

        /// <summary>
        /// Gets or sets VideoID.
        /// </summary>
        public int id { get; set; }

        /// <summary>
        /// Gets or sets Image name.
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// Gets or sets Image extension.
        /// </summary>
        public string ContentType { get; set; }

        public string Data { get; set; }
        public List<VideoObj> VideoLst { get; set; }

        public HttpPostedFileBase FileAttach { get; set; }
        #endregion
    }
}