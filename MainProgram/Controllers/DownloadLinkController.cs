//-----------------------------------------------------------------------
// <copyright file="ImgController.cs" company="None">
//     Copyright (c) Allow to distribute this code and utilize this code for personal or commercial purpose.
// </copyright>
// <author>Asma Khalid</author>
//-----------------------------------------------------------------------


using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web.Mvc;
using MainProgram.Core;
using System.Collections.Generic;
using MainProgram.Helper_Code.Objects;
using MainProgram.Edm;
using System.Net;
namespace MainProgram.Controllers
{
    public class DownloadLinkController : Controller
    {
        angulardemoEntities databaseManager = new angulardemoEntities();


        #region Index view method.

        #region Get: /Img/Index method.

        /// <summary>
        /// Get: /Img/Index method.
        /// </summary>        
        /// <returns>Return index view</returns>
        public ActionResult Index()
        {
            // Initialization.
            ViewBag.Essien = databaseManager.tbh_Documents.Where(x => x.file_name.Equals("culture.jpg")).ToList();
            ViewBag.Documentest = databaseManager.tbh_Documents.Where(x => x.file_name.Equals("Documentest")).ToList();
            // Initialization.
            ImgViewModel model = new ImgViewModel { FileAttach = null, ImgLst = new List<ImgObj>() };

            try
            {
                // Settings.
                model.ImgLst= this.databaseManager.sp_get_all_Docfiles().Select(p => new ImgObj
                {
                    FileId = p.file_id,
                    FileName = p.file_name,
                    FileContentType = p.file_ext
                }).ToList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            // Info.
            return this.View(model);
        }


        #endregion

        #region POST: /Img/Index

        /// <summary>
        /// POST: /Img/Index
        /// </summary>
        /// <param name="model">Model parameter</param>
        /// <returns>Return - Response information</returns>
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Index(ImgViewModel model)
        {
            // Initialization.
            string fileContent = string.Empty;
            string fileContentType = string.Empty;

            try
            {
                // Verification
                if (ModelState.IsValid)
                {
                    // Converting to bytes.
                    byte[] uploadedFile = new byte[model.FileAttach.InputStream.Length];
                    model.FileAttach.InputStream.Read(uploadedFile, 0, uploadedFile.Length);

                    // Initialization.
                    fileContent = Convert.ToBase64String(uploadedFile);
                    fileContentType = model.FileAttach.ContentType;

                    // Saving info.
                    this.databaseManager.sp_insert_Docfile(model.FileAttach.FileName, fileContentType, fileContent);
                }

                // Settings.
                model.ImgLst = this.databaseManager.sp_get_all_Docfiles().Select(p => new ImgObj
                {
                    FileId = p.file_id,
                    FileName = p.file_name,
                    FileContentType = p.file_ext
                }).ToList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            // Info
            return this.View(model);
        }

        #endregion

        #endregion






        //Begin
        public ActionResult DownloadLink()
        {
            // Initialization.
            ViewBag.Essien = databaseManager.tbh_Documents.Where(x => x.file_name.Equals("Peter Essien_Updated Resume.docx")).ToList();
            ImgViewModel model = new ImgViewModel { FileAttach = null, ImgLst = new List<ImgObj>() };

            try
            {
                // Settings.
                model.ImgLst = this.databaseManager.sp_get_all_Docfiles().Select(p => new ImgObj
                {
                    FileId = p.file_id,
                    FileName = p.file_name,
                    FileContentType = p.file_ext
                }).ToList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            // Info.
            return this.View(model);
        }



        #region POST: /Img/Index

        /// <summary>
        /// POST: /Img/Index
        /// </summary>
        /// <param name="model">Model parameter</param>
        /// <returns>Return - Response information</returns>
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult DownloadLink(ImgViewModel model)
        {
            // Initialization.
            string fileContent = string.Empty;
            string fileContentType = string.Empty;

            try
            {
                // Verification
                if (ModelState.IsValid)
                {
                    // Converting to bytes.
                    byte[] uploadedFile = new byte[model.FileAttach.InputStream.Length];
                    model.FileAttach.InputStream.Read(uploadedFile, 0, uploadedFile.Length);

                    // Initialization.
                    fileContent = Convert.ToBase64String(uploadedFile);
                    fileContentType = model.FileAttach.ContentType;

                    // Saving info.
                    this.databaseManager.sp_insert_Docfile(model.FileAttach.FileName, fileContentType, fileContent);
                }

                // Settings.
                model.ImgLst = this.databaseManager.sp_get_all_Docfiles().Select(p => new ImgObj
                {
                    FileId = p.file_id,
                    FileName = p.file_name,
                    FileContentType = p.file_ext
                }).ToList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            // Info
            return this.View(model);
        }

        #endregion


        //End




        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbh_Documents ObjThread = databaseManager.tbh_Documents.Find(id);
            if (ObjThread == null)
            {
                return HttpNotFound();
            }
            return View(ObjThread);
        }

        // POST: /Menu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                tbh_Documents ObjThread = databaseManager.tbh_Documents.Find(id);
                databaseManager.tbh_Documents.Remove(ObjThread);
                databaseManager.SaveChanges();
            }

            catch (RetryLimitExceededException/* dex */)
            {
                //Log the error (uncomment dex variable name and add a line here to write a log.
                return RedirectToAction("Delete", new { id = id, saveChangesError = true });
            }
            return RedirectToAction("Index");
        }







        #region Download file methods

        #region GET: /Img/DownloadFile

        /// <summary>
        /// GET: /Img/DownloadFile
        /// </summary>
        /// <param name="fileId">File Id parameter</param>
        /// <returns>Return download file</returns>
        public ActionResult DownloadLinkFile(int fileId)
        {
            // Model binding.
            ImgViewModel model = new ImgViewModel { FileAttach = null, ImgLst = new List<ImgObj>() };

            try
            {
                // Loading dile info.
                var fileInfo = this.databaseManager.sp_get_file_Docdetails(fileId).First();

                // Info.
                return this.GetFile(fileInfo.file_base6, fileInfo.file_ext);
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            // Info.
            return this.View(model);
        }

        #endregion

        #endregion



        #region Helpers

        #region Get file method.

        /// <summary>
        /// Get file method.
        /// </summary>
        /// <param name="fileContent">File content parameter.</param>
        /// <param name="fileContentType">File content type parameter</param>
        /// <returns>Returns - File.</returns>
        private FileResult GetFile(string fileContent, string fileContentType)
        {
            // Initialization.
            FileResult file = null;

            try
            {
                // Get file.
                byte[] byteContent = Convert.FromBase64String(fileContent);
                file = this.File(byteContent, fileContentType);
            }
            catch (Exception ex)
            {
                // Info.
                throw ex;
            }

            // info.
            return file;
        }





        #endregion

        #endregion
    }


}