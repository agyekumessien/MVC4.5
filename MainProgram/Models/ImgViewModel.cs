//-----------------------------------------------------------------------
// <copyright file="ImgViewModel.cs" company="None">
//     Copyright (c) Allow to distribute this code and utilize this code for personal or commercial purpose.
// </copyright>
// <author>Asma Khalid</author>
//-----------------------------------------------------------------------



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.Core
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Web;
    using Helper_Code.Objects;

    /// <summary>
    /// Image view model class.
    /// </summary>
    public class ImgViewModel
    {
        #region Properties

        /// <summary>
        /// Gets or sets Image file.
        /// </summary>
        [Required]
        [Display(Name = "Upload File")]
        public HttpPostedFileBase FileAttach { get; set; }

        /// <summary>
        /// Gets or sets Image file list.
        /// </summary>
        public List<ImgObj> ImgLst { get; set; }

        #endregion
    }
}
