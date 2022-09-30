using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MainProgram.Core;
using MainProgram.Edm;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Data;
using MainProgram.Helper_Code.Objects;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Net;
using PagedList;
using PagedList.Mvc;



namespace MainProgram.Controllers
{
    public class VideoController : Controller
    {
        angulardemoEntities entities = new angulardemoEntities();
        // GET: Video
        public ActionResult Index(int? id)
        {
            tblVideo post = entities.tblVideos.Include(s => s.tblVideo1).SingleOrDefault(s => s.id == id);
            return View(post);
            // Info.
          
        }







         

        [HttpPost]
        public ActionResult Index(HttpPostedFileBase postedFile)
        {
            string fileName = Path.GetFileName(postedFile.FileName);
            int fileSize = postedFile.ContentLength;
            int Size = fileSize / 1000;
            postedFile.SaveAs(Server.MapPath("~/VideoFileUpload/" + fileName));  
  
            int userId = Convert.ToInt32(Session["UserId"]);
            int filesize = Convert.ToInt32(Session["FileSize"]);
            var user = UserHelper.GetUserId();
            byte[] bytes;
            using (BinaryReader br = new BinaryReader(postedFile.InputStream))
            {
                bytes = br.ReadBytes(postedFile.ContentLength);
            }
            angulardemoEntities entities = new angulardemoEntities();
            entities.tblVideos.Add(new tblVideo
            {
                Name = Path.GetFileName(postedFile.FileName),
                ContentType = postedFile.ContentType,
                Data = bytes,
                FilePath = Path.Combine(Server.MapPath("~/VideoFileUpload/" + fileName)),
                FileSize = Convert.ToInt32(fileSize / 1000),
                UserId = Convert.ToInt32(user),
            });
            entities.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public FileResult DownloadFile(int? fileId)
        {
            angulardemoEntities entities = new angulardemoEntities();
            //MainProgram.Edm.angulardemoEntities.CommandTimeout = 5000;
            tblVideo file = entities.tblVideos.ToList().Find(p => p.id == fileId.Value);
            return File(file.Data, file.ContentType, file.Name);

        }

        public ActionResult VideoList()
        {


            //tblFile file = entities.tblFiles.Where(x => x.id == Id).FirstOrDefault();
            //  tblFile file = entities.tblFiles.Where(x => x.id == Id).FirstOrDefault();
            // tblFile op = new tblFile();
            //   op.ContentType = tb.ContentType;
            //  op.Name = tb.Name;
            // return View(tb);


            var Threads = entities.tblVideos;
            return View(Threads.ToList());

        }

        public ActionResult Details(int? id)
        {


            return View(entities.tblVideos.Where(p => p.ContentType == "video/mp4").SingleOrDefault(s => s.id == id));
            //  tblFile post = obj.tblFiles.Where(s => s.tblFile1.ContentType.SingleOrDefault(x => x. == id);
            // tblFile post = obj.tblFiles.SingleOrDefault(s => s.id == id);
            // return View();
        }


        private ActionResult ModelBind()
        {
            var Objdn = entities.tblVideos;
            return View(Objdn.ToList());
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                entities.Dispose();
            }
            base.Dispose(disposing);
        }

        [HttpGet]
        public ActionResult UploadVideo()
        {
            List<tblVideo> videolist = new List<tblVideo>();
            string CS = ConfigurationManager.ConnectionStrings["angulardemoEntities"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_get_all_Video", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    tblVideo video = new tblVideo();
                    video.id = Convert.ToInt32(rdr["id"]);
                    video.Name = rdr["Name"].ToString();
                        video.Data = (byte[])rdr["Data"];
                    video.ContentType = rdr["ContentType"].ToString();
                    video.FileSize = Convert.ToInt32(rdr["FileSize"]);
                    video.FilePath = rdr["FilePath"].ToString();

                    videolist.Add(video);
                }
            }
            return View(videolist);
        }  

[HttpPost]  
        public ActionResult UploadVideo(HttpPostedFileBase fileupload)  
        {  
            if (fileupload != null)  
            {  
                string fileName= Path.GetFileName(fileupload.FileName);                
                int fileSize = fileupload.ContentLength;  
                int Size = fileSize / 1000;  
                fileupload.SaveAs(Server.MapPath("~/VideoFileUpload/" + fileName));  
  
                string CS = ConfigurationManager.ConnectionStrings["angulardemoEntities"].ConnectionString;  
                using (SqlConnection con = new SqlConnection(CS))  
                {  
                    SqlCommand cmd = new SqlCommand("sp_insert_Videofile", con);  
                    cmd.CommandType = CommandType.StoredProcedure;  
                    con.Open();  
                    cmd.Parameters.AddWithValue("@Name",fileName);
                             cmd.Parameters.AddWithValue("@Data",fileName);  
                    cmd.Parameters.AddWithValue("@ContentType", fileName); 
                    cmd.Parameters.AddWithValue("@FileSize", Size);  
                    cmd.Parameters.AddWithValue("FilePath", "~/VideoFileUpload/" + fileName);  
                    cmd.ExecuteNonQuery();  
                }  
            }  
            return RedirectToAction("UploadVideo");  
        }

public ActionResult DotNetVideo(int? id)
{
   // ViewBag.DotNetVideo = entities.tblVideos.Where(x => x.Name.Equals("Ad.mp4")).ToList();

    tblVideo post = entities.tblVideos.Include(s => s.tblVideo1).SingleOrDefault(s => s.id == id);
    return View(entities.tblVideos.Where(p => p.ContentType == "video/mp4").SingleOrDefault(s => s.id == id));
    
}

public ActionResult MvcVideo(int? id)
{
    // ViewBag.DotNetVideo = entities.tblVideos.Where(x => x.Name.Equals("Ad.mp4")).ToList();

    tblVideo post = entities.tblVideos.Include(s => s.tblVideo1).SingleOrDefault(s => s.id == id);
    return View(entities.tblVideos.Where(p => p.ContentType == "video/mp4").SingleOrDefault(s => s.id == id));

}

public ActionResult AspNetVideo(int? id)
{
    // ViewBag.DotNetVideo = entities.tblVideos.Where(x => x.Name.Equals("Ad.mp4")).ToList();

    tblVideo post = entities.tblVideos.Include(s => s.tblVideo1).SingleOrDefault(s => s.id == id);
    return View(entities.tblVideos.Where(p => p.ContentType == "video/mp4").SingleOrDefault(s => s.id == id));

}

public ActionResult SQLServerVideo(int? id)
{
    // ViewBag.DotNetVideo = entities.tblVideos.Where(x => x.Name.Equals("Ad.mp4")).ToList();

    tblVideo post = entities.tblVideos.Include(s => s.tblVideo1).SingleOrDefault(s => s.id == id);
    return View(entities.tblVideos.Where(p => p.ContentType == "video/mp4").SingleOrDefault(s => s.id == id));

}




        [HttpGet]
public void DownloadVideo(HttpPostedFileBase postedFile)
        {


            string fileName = Path.GetFileName(postedFile.FileName);
            int fileSize = postedFile.ContentLength;
            int Size = fileSize / 1000;
            postedFile.SaveAs(Server.MapPath("~/VideoFileUpload/" + fileName));  
            List<tblVideo> lst = new List<tblVideo>();
            string strConnString = ConfigurationManager.ConnectionStrings[" angulardemoEntities"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strConnString))
            //using(SqlConnection con=new SqlConnection(cs))
            {
                con.Open();
                SqlCommand com = new SqlCommand("SelecttblVideo", con);
                com.CommandType = CommandType.StoredProcedure;
                SqlDataReader rdr = com.ExecuteReader();
                while (rdr.Read())
                {
                    lst.Add(new tblVideo
                    {
                        id = Convert.ToInt32(rdr["id"]),
                        Name = rdr["Name"].ToString(),
                        Data = (byte[])rdr["Data"],
                        FilePath = Path.Combine(Server.MapPath("~/VideoFileUpload/" + fileName)),
                        FileSize = Convert.ToInt32(fileSize / 1000),
                       
                    });

                    return;
                };
            }
        }
    }

}               
    