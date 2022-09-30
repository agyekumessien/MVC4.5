using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web.Mvc;
using MainProgram.Core;
using MainProgram.Edm;
using System.IO;
using System.Collections.Generic;
using System.Text;
using System.Net.Mail;
using PagedList;
using PagedList.Mvc;


using System.Net;
using System.Threading.Tasks;
using System.Configuration;
using MainProgram.Helper_Code;
using System.Drawing.Drawing2D;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System.Web;

using System.Data.SqlClient;
using System.Data;
using MainProgram.Core.Provider;
using Microsoft.AspNet.Identity;




namespace MainProgram.Controllers
{
    public class HomeController : Controller
    {

        private ApplicationUser dba = new ApplicationUser();
        private angulardemoEntities db = new angulardemoEntities();









        angulardemoEntities obj = new angulardemoEntities();

        // ApplicationDbContext obj = new ApplicationDbContext();

        // GET: Home
        public ActionResult Index()
        {
            Session["UserId"] = 0;
            //  var dsposts = obj.Posts.Include(x => x.tbh_DSReplies).ToList();
            ViewBag.Slider = obj.genMainSliders.ToList();
            ViewBag.FsSlider = obj.tbh_FrontSlider.ToList();
            ViewBag.Images = obj.tbh_Media.ToList();
            ViewBag.PromoRight = obj.genPromoRights.ToList();
            var d = obj.tbh_Departments.Include(c => c.tbh_SubDepartments).ToList();
            var posts = obj.Threads.Include(x => x.tbh_Replies).ToList();
            ViewBag.Women = obj.tbh_Products.Where(x => x.tbh_SubDepartments.Name.Equals("Women")).ToList();
            // ViewBag.Shop = db.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Shop")).ToList();
            // ViewBag.Slink = db.tbh_SocialLink.ToList();
            ViewBag.Facebook = obj.tbh_SocialLink.Where(x => x.tbh_Social.Name.Equals("Facebook")).ToList();
            ViewBag.Twitter = obj.tbh_SocialLink.Where(x => x.tbh_Social.Name.Equals("Twitter")).ToList();
            ViewBag.Facility = obj.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Facility")).ToList();
            ViewBag.Blog = obj.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Blog")).ToList();
            ViewBag.AllProducts = obj.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("All Products")).ToList();
            ViewBag.Culture = obj.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Policies")).ToList();
            ViewBag.Procedure = obj.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Policies")).ToList();
            ViewBag.Policies = obj.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Culture")).ToList();
            ViewBag.Download = obj.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Download")).ToList();
            ViewBag.Ideas = obj.tbh_Pages.Where(x => x.tbh_SubDepartments.Name.Equals("Ideas")).ToList();
            ViewBag.Welcome = obj.tbh_FrontSlider.Where(x => x.Name.Equals("Welcome")).ToList();
            ViewBag.Ads = obj.tbh_FrontSlider.Where(x => x.Name.Equals("Ads")).ToList();
            ViewBag.Ads2 = obj.tbh_FrontSlider.Where(x => x.Name.Equals("Ads2")).ToList();
            ViewBag.Corporate2 = obj.tbh_FrontSlider.Where(x => x.Name.Equals("Corporate2")).ToList();
            ViewBag.Corporate1 = obj.tbh_FrontSlider.Where(x => x.Name.Equals("Corporate1")).ToList();
            ViewBag.Gift = obj.tbh_FrontSlider.Where(x => x.Name.Equals("Gift")).ToList();
            ViewBag.Pillow = obj.tbh_FrontSlider.Where(x => x.Name.Equals("Pillow")).ToList();
            ViewBag.WelcomePages = obj.tbh_Pages.Where(x => x.Name.Equals("Welcome")).ToList();
            ViewBag.Students1 = obj.tbh_FrontSlider.Where(x => x.Name.Equals("students1")).ToList();
            ViewBag.Students2 = obj.tbh_FrontSlider.Where(x => x.Name.Equals("students2")).ToList();
            ViewBag.business = obj.tbh_FrontSlider.Where(x => x.Name.Equals("business")).ToList();
            ViewBag.Articles = obj.tbh_Departments.Where(x => x.Name.Equals("Articles")).ToList();
            ViewBag.Shop = obj.tbh_Departments.Where(x => x.Name.Equals("Shop")).ToList();
            ViewBag.ShopF = obj.tbh_Pages.Where(x => x.Name.Equals("Shop")).ToList();
            ViewBag.Location = obj.tbh_Pages.Where(x => x.Name.Equals("Location")).ToList();
            ViewBag.Culture = obj.tbh_Pages.Where(x => x.Name.Equals("Culture")).ToList();
            ViewBag.Ideas = obj.tbh_Pages.Where(x => x.Name.Equals("Ideas")).ToList();
            ViewBag.McM = obj.tbh_Products.Where(x => x.Name.Equals("McMagain")).ToList();
            ViewBag.whitney = obj.tbh_Products.Where(x => x.Name.Equals("Whitney")).ToList();
            ViewBag.dk = obj.tbh_Products.Where(x => x.Name.Equals("DK")).ToList();
            ViewBag.Sbook = obj.tbh_Products.Where(x => x.Name.Equals("Sbook")).ToList();
            // ViewBag.File = obj.tbl_file.Where(x => x.file_name.Equals("culture.jpg")).ToList();
            ViewBag.KnowledgeBase = obj.tbh_Pages.Where(x => x.Name.Equals("KnowledgeBase")).ToList();
            ViewBag.Contact = obj.tbh_Pages.Where(x => x.Name.Equals("Contact")).ToList();
            ViewBag.Subscribe = obj.tbh_Subscribe.Where(x => x.emailid.Equals("Subcribe")).ToList();
            ViewBag.Simage1 = obj.tbh_FrontSlider.Where(x => x.Name.Equals("straderImage1")).ToList();
            ViewBag.Simage2 = obj.tbh_FrontSlider.Where(x => x.Name.Equals("straderImage2")).ToList();
            ViewBag.reply = obj.Threads.Include(s => s.tbh_Replies).FirstOrDefault(s => s.UserId == 12);
           //Post_Quetion
            ViewBag.Qcsharp = obj.Post_Question.Where(x => x.FirstName.Equals("Michael")).ToList();
            ViewBag.Qmvc = obj.Post_Question.Where(x => x.FirstName.Equals("Tom")).ToList();
            ViewBag.QSqldb = obj.Post_Question.Where(x => x.FirstName.Equals("Felicity")).ToList();
            ViewBag.Qcss = obj.Post_Question.Where(x => x.FirstName.Equals("Smart")).ToList();
            ViewBag.Qef= obj.Post_Question.Where(x => x.FirstName.Equals("Dora")).ToList();
            ViewBag.QJScript = obj.Post_Question.Where(x => x.FirstName.Equals("Rao")).ToList();
             ViewBag.Qdba = obj.Post_Question.Where(x => x.FirstName.Equals("Jay")).ToList();
             ViewBag.Qaspnet = obj.Post_Question.Where(x => x.FirstName.Equals("Pearce")).ToList();
             





       /*     var file = obj.Files.SingleOrDefault();
            Attachment attachment;
            using (var stream = new MemoryStream())
            {

                attachment = new Attachment(stream, file.FileName);
            }
            var message = new MailMessage();
            message.Attachments.Add(attachment);*/



            return View();
        }

        public ActionResult Dashboard()
        {
            return View();
        }


        public ActionResult Articles()
        {
            ViewBag.tech = obj.tbh_Pages.Where(x => x.Name.Equals("Articles")).ToList();


            ViewBag.Message = "Your contact page.";

            return View();
        }


        public ActionResult Shop()
        {
            ViewBag.Bks = obj.tbh_Products.Where(x => x.MenuIcon.Equals("Books")).ToList();


            ViewBag.cat = db.tbh_Category.Where(c => c.Name.Equals("Books & Audible")).ToList();
            ViewBag.Subcat = db.tbh_Category.Where(c => c.Name.Equals("Study Books")).ToList();

            ViewBag.catb = db.tbh_Category.Where(c => c.Name.Equals("Home Necessities")).ToList();
            ViewBag.Subcatb = obj.tbh_Category.Where(c => c.Name.Equals("Television")).ToList();
            ViewBag.Subcatb1 = obj.tbh_Category.Where(c => c.Name.Equals("Computers and Tablets")).ToList();
            ViewBag.Subcatb2 = obj.tbh_Category.Where(c => c.Name.Equals("Cell Phones")).ToList();
            ViewBag.Subcatb3 = obj.tbh_Category.Where(c => c.Name.Equals("appliances  & Chairs")).ToList();


            ViewBag.catc = db.tbh_Category.Where(c => c.Name.Equals("OutDooring")).ToList();
            ViewBag.Subcatc = obj.tbh_Category.Where(c => c.Name.Equals("Sports")).ToList();
            ViewBag.Subcatc1 = obj.tbh_Category.Where(c => c.Name.Equals("Furniture")).ToList();
            ViewBag.Subcatc2 = obj.tbh_Category.Where(c => c.Name.Equals("Furniture")).ToList();

            ViewBag.catd = db.tbh_Category.Where(c => c.Name.Equals("Body Outfit")).ToList();
            ViewBag.Subcatd = obj.tbh_Category.Where(c => c.Name.Equals("Women Clothing")).ToList();
            ViewBag.Subcatd1 = obj.tbh_Category.Where(c => c.Name.Equals("Men Clothing")).ToList();
            ViewBag.Subcatd2 = obj.tbh_Category.Where(c => c.Name.Equals("Kids & Toys")).ToList();
            ViewBag.Subcatd3 = obj.tbh_Category.Where(c => c.Name.Equals("Jewelry")).ToList();
            ViewBag.Subcatd4 = obj.tbh_Category.Where(c => c.Name.Equals("Shoe")).ToList();

            ViewBag.cate = db.tbh_Category.Where(c => c.Name.Equals("Hardwares")).ToList();
            ViewBag.Subcate = obj.tbh_Category.Where(c => c.Name.Equals("Tools")).ToList();



            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult ViewCart()
        {
            return View();
        }


        public ActionResult Details(int id)
        {
            var builder = new StringBuilder();
            var imgPath = MainProgram.Core.Provider.Constants.ImagePath + "/";
            //  ViewBag.detail = obj.tbh_Products.Where(x => x.FullImageUrl.Equals("Shop")).ToList();
            tbh_Products product = obj.tbh_Products.Include(s => s.tbh_Products1).SingleOrDefault(s => s.ProductID == id);
            //  var imgProducts = product.FullImageUrl.Any() ? product.FullImageUrl.Select(a => imgPath + product.FullImageUrl).ToList() : new List<string>();
            var entities = obj.tbh_Products.Where(a => a.ProductID == id);
            if (id > 0)
            {
                var models = entities.Select(a => new tbh_Products()
                {
                    ProductID = a.ProductID,
                    UnitPrice = a.UnitPrice,
                    Name = a.Name,
                    Quantity = a.Quantity,
                    FullImageUrl = a.FullImageUrl.Any() ?

                             imgPath + a.FullImageUrl + a.FullImageUrl.FirstOrDefault() :
                          null
                }).OrderBy(a => a.UnitPrice);

                builder.Append("<img class='simpleLens-thumbnail-wrapper' src='Content/img/[FullImageUrl" + "' data-big-image='ApparelImages/FullImageUrl].ToString() +  width='80' height='80'>");
            }

            return View(product);
        }




        [HttpGet]
        public ActionResult Contact()
        {
            return View();
        }

        //  public ActionResult Contact(tbh_ContactUs model, string email, string subject, string message)
        [HttpPost]
        public ActionResult Contact(tbh_ContactUs model)
        {
            // ViewBag.Contact = obj.tbh_Pages.Where(x => x.Name.Equals("Contact")).ToList();
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }


            if (ModelState.IsValid)
            {
                model.UserId = Convert.ToInt32(user);
                model.Subject = model.Subject;
                model.name = model.name;
                model.emailid = model.emailid;
                model.message = model.message;


                //Save Order
                obj.tbh_ContactUs.Add(model);
                obj.SaveChanges();
            }
            return RedirectToAction("Sent", "Home");


        }

        /*
              {

                  var mail = new MailMessage();
                  var _email = "agyekumessien@gmail.com";
                  var _epass = ConfigurationManager.AppSettings["EmailPassword"];
                   
                  var _dispName = "essien.net";
                  MailMessage myMessage = new MailMessage();
                  myMessage.To.Add(_email);
                  myMessage.From = new MailAddress(_email, _dispName);
                  myMessage.Subject = model.Subject;
               //   myMessage.Body = string.Format(body, model.emailid, model.name);
                  myMessage.IsBodyHtml = true;
                //  myMessage.Bcc.Add(new MailAddress("two@gmail.com"));
               //   myMessage.Bcc.Add(new MailAddress("three@gmail.com"));
                  myMessage.Body = model.name;
                  myMessage.Body = model.message;
                  myMessage.Subject = "Essien.net Subscription";
                  myMessage.To.Add(new MailAddress("agyekumessien@yahoo.com"));  // replace with v
                  // var body = string.Format(model.name, model.emailid);





                  myMessage.To.Add(new MailAddress("agyekumessien@yahoo.com"));  // replace with valid value 

                  mail.From = new MailAddress("agyekumessien@gmail.com");  // replace with valid value

                  //mail.Body = string.Format(body, model.name, model.emailid);
                  // mail.IsBodyHtml = true;

                  mail.To.Add(new MailAddress("agyekumessien@yahoo.com"));
                  // mail.To.Add(new MailAddress("two@gmail.com"));
                  // mail.To.Add(new MailAddress("three@gmail.com"));

                  // mail.Bcc.Add(new MailAddress("two@gmail.com"));
                  //  mail.Bcc.Add(new MailAddress("three@gmail.com"));


                  //If you don't want each recipient to see others in the recipient list, you can use the Bcc property and add recipients to that, just like with the To property:

                  mail.Bcc.Add(new MailAddress("agyekumessien@yahoo.com"));
                  // message.Bcc.Add(new MailAddress("two@gmail.com"));
                  // message.Bcc.Add(new MailAddress("three@gmail.com"));


                  
                  /* if (mail.IsBodyHtml == true)
                   {
                       string fileName = Path.GetFileNameWithoutExtension(model.ImageFile.FileName);
                       string extension = Path.GetExtension(model.ImageFile.FileName);
                       fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                       //  fileName = System.IO.Path.GetFileName(thread.ImageFile.FileName);
                       model.ImagePath = "/Image/" + fileName;
                       fileName = Path.Combine(Server.MapPath("/Image/"), fileName);
                       model.ImageFile.SaveAs(fileName);
                       mail.Attachments.Add(new Attachment(model.ImagePath, Path.GetFileName(model.FileName)));
                   }



                  using (SmtpClient smtp = new SmtpClient())
                  {
                      smtp.EnableSsl = true;
                      smtp.Host = "smtp.gmail.com";
                      smtp.Port = 587;
                      smtp.UseDefaultCredentials = false;
                      smtp.Credentials = new NetworkCredential(_email, _epass);
                      smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                      smtp.SendCompleted += (s, e) => { smtp.Dispose(); };
                           
                          {
                              smtp.Send(myMessage);
                          }*/










        public ActionResult Comments(string pageId, string sortOrder)
        {
            return PartialView();
        }




        public ActionResult About()
        {

            return View();
        }





        public ActionResult Sent()
        {

            return View();
        }



        public ActionResult FileDownload(tbh_Documents id)
        {
            angulardemoEntities db = new angulardemoEntities();
            var dir = new System.IO.DirectoryInfo(Server.MapPath("~/Upload/"));
            System.IO.FileInfo[] fileNames = dir.GetFiles("*.*");
            foreach (var file in fileNames)
                Console.WriteLine(id);

            List<tbh_Documents> ObjFiles = new List<tbh_Documents>();

            return View(id);

        }

        public FileContentResult UserPhotos()
        {
            if (User.Identity.IsAuthenticated)
            {
                var Id = Convert.ToInt32(UserHelper.GetUserId());

                if (Id == null)
                {
                    string fileName = HttpContext.Server.MapPath(@"~/Image/noImg.png");

                    byte[] imageData = null;
                    FileInfo fileInfo = new FileInfo(fileName);
                    long imageFileLength = fileInfo.Length;
                    FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read);
                    BinaryReader br = new BinaryReader(fs);
                    imageData = br.ReadBytes((int)imageFileLength);

                    return File(imageData, "image/png");

                }
                // to get the user details to load user Image 
                var bdUsers = HttpContext.GetOwinContext().Get<ApplicationDbContext>();
                var userImage = bdUsers.Users.Where(x => x.Id == Id).FirstOrDefault();

                return new FileContentResult(userImage.UserPhoto, "image/jpeg");
            }
            else
            {
                string fileName = HttpContext.Server.MapPath(@"~/Image/noImg.png");

                byte[] imageData = null;
                FileInfo fileInfo = new FileInfo(fileName);
                long imageFileLength = fileInfo.Length;
                FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read);
                BinaryReader br = new BinaryReader(fs);
                imageData = br.ReadBytes((int)imageFileLength);
                return File(imageData, "image/png");

            }

        }





        public ActionResult ImageDownload(string ImageName)
        {
            var FileVirtualPath = "~/App_Data/uploads/" + ImageName;
            return File(FileVirtualPath, "application/force-download", Path.GetFileName(FileVirtualPath));
        }


        public ActionResult Q100(string categoryName, int? page)
        {

            //var d = obj.Threads.Include(c => c.Threads).ToList();
            ViewBag.Q100a = obj.Threads.Where(x => x.ThreadSKu.Equals("Q100a")).ToList();
            ViewBag.Q100b = obj.Threads.Where(x => x.ThreadSKu.Equals("Q100b")).ToList();
            ViewBag.Q100c = obj.Threads.Where(x => x.ThreadSKu.Equals("Q100c")).ToList();
            ViewBag.Q100d = obj.Threads.Where(x => x.ThreadSKu.Equals("Q100d")).ToList();
            ViewBag.Q100e = obj.Threads.Where(x => x.ThreadSKu.Equals("Q100e")).ToList();
            ViewBag.Q100f = obj.Threads.Where(x => x.ThreadSKu.Equals("Q100f")).ToList();
            ViewBag.Q100g = obj.Threads.Where(x => x.ThreadSKu.Equals("Q100g")).ToList();
            ViewBag.Q100h = obj.Threads.Where(x => x.ThreadSKu.Equals("Q100h")).ToList();
            return View();

        }



     
       /* public ActionResult UserProfile()
        {
            return View();
        }
        // [HttpPost, Authorize, ValidateAntiForgeryToken]
        [HttpPost, ValidateAntiForgeryToken]
        public ActionResult UserProfile(AspNetUser userProfileModel)
        {
            if (ModelState.IsValid)
            {

                //  string currentUserId2 = UserHelper.GetUserProfile();
                if (User.Identity.IsAuthenticated)
                {
                    var currentUserId = Convert.ToInt32(User.Identity.GetUserId());
                    using (angulardemoEntities obj = new angulardemoEntities())
                    {
                        var currentUser = db.AspNetUsers.FirstOrDefault(x => x.Id == currentUserId);
                        userProfileModel.FullName = userProfileModel.FullName;

                        userProfileModel.Email = userProfileModel.Email;
                        userProfileModel.Address = userProfileModel.Address;
                        userProfileModel.UserPhoto = userProfileModel.UserPhoto;
                        db.AspNetUsers.Add(userProfileModel);
                    }
                    return View(userProfileModel);
                }

                ViewBag.Message = "Profile is saved successfully.";
            }

            return View();





        }*/


          public ActionResult UserProfile()
        {
            return View();
        }

        // [HttpPost, Authorize, ValidateAntiForgeryToken]
          [HttpPost, ValidateAntiForgeryToken]
          public ActionResult UserProfile(AspNetUser userProfileModel)
          {
              if (ModelState.IsValid)
              {
                  //  string currentUserId2 = UserHelper.GetUserProfile();
                  if (User.Identity.IsAuthenticated)
                  {
                      var user = (UserHelper.GetUserId());
                      //var currentUserId = Convert.ToInt32(User.Identity.GetUserId());
                      using (angulardemoEntities obj = new angulardemoEntities())
                      {


                          var currentUser = db.AspNetUsers.FirstOrDefault(x => x.Id == userProfileModel.Id);
                          userProfileModel.FullName = userProfileModel.FirstName;

                          userProfileModel.Email = userProfileModel.FirstName;
                          userProfileModel.Address = userProfileModel.FirstName;
                          db.AspNetUsers.Add(userProfileModel);
                      }
                      return View(userProfileModel);
                  }

                  ViewBag.Message = "Profile is saved successfully.";
              }

              return View(userProfileModel);

          }

       



        /*
        public ActionResult VideoList()
        {
    
            //tblFile file = entities.tblFiles.Where(x => x.id == Id).FirstOrDefault();
            //  tblFile file = entities.tblFiles.Where(x => x.id == Id).FirstOrDefault();
            // tblFile op = new tblFile();
            //   op.ContentType = tb.ContentType;
            //  op.Name = tb.Name;
            // return View(tb);


            var Threads = obj.tblVideos;
            return View(Threads.ToList());

        }


        public ActionResult Details(int? id)
        {
   

            return View(obj.tblVideos.Where(p => p.ContentType == "video/mp4").SingleOrDefault(s => s.id == id));
            //  tblFile post = obj.tblFiles.Where(s => s.tblFile1.ContentType.SingleOrDefault(x => x. == id);
            // tblFile post = obj.tblFiles.SingleOrDefault(s => s.id == id);
            // return View();
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

         * 
         * 
        */

        public ActionResult GetPosts(string sortOrder, string currentFilter, string searchString, int? page)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            var Model = new DotNetVM();
            ViewBag.UserCount = (from m in obj.DotNets where m.AspNetUser.UserName == user select new { m.DotNetReplies }).Count();
            ViewBag.UserJames = (from m in obj.MVCs where m.AspNetUser.UserName == "James Say" select new { m.MVCReplies }).Count();
            ViewBag.UserSoya = (from m in obj.DotNets where m.AspNetUser.UserName == "Mercy Soya" select new { m.DotNetReplies }).Count();
            ViewBag.UserJay = (from m in obj.DotNets where m.AspNetUser.UserName == "Jay Man" select new { m.DotNetReplies }).Count();
            ViewBag.UserJonathan = (from m in obj.DotNets where m.AspNetUser.UserName == "Jonathan Jebrown" select new { m.DotNetReplies }).Count();
            ViewBag.UserKoa = (from m in obj.DotNets where m.AspNetUser.UserName == "Samson Koa" select new { m.DotNetReplies }).Count();


            ViewBag.UserCount = (from m in obj.MVCs where m.AspNetUser.UserName == "Peter Agyekum" select new { m.MVCReplies }).Count();

            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var posts = from s in obj.MVCs
                        select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                posts = posts.Where(s => s.MVCTitle.Contains(searchString)
                                       || s.MVCText.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    posts = posts.OrderByDescending(s => s.MVCTitle);
                    break;
                case "Date":
                    posts = posts.OrderBy(s => s.PostDate);
                    break;
                case "date_desc":
                    posts = posts.OrderByDescending(s => s.PostDate);
                    break;
                default:  // Name ascending 
                    posts = posts.OrderBy(s => s.MVCTitle);
                    break;
            }

            // int pageSize = 3;
            // int pageNumber = (page ?? 1);
            //  return View(posts.ToPagedList(pageNumber, pageSize));
            return View();
        }

        public string attachment { get; set; }
    }

}
    
