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
using System.Net;
using System.Threading.Tasks;
using System.Configuration;

using System.Drawing.Drawing2D;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System.Web;
using Microsoft.AspNet.Identity;
using MainProgram.Helper_Code;
using System.Data.SqlClient;
using System.Data;


namespace MainProgram.Controllers
{
    public class SubscribeController : Controller
    {
        angulardemoEntities obj = new angulardemoEntities();
        // GET: News
        public ActionResult Index()
        {
            return View();
        }



        [HttpGet]
        public ActionResult Subscribe()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Subscribe(tbh_Subscribe model)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }


            if (ModelState.IsValid)
            {


                model.UserId = Convert.ToInt32(user);
                model.emailid = model.emailid;


                //Save Order
                obj.tbh_Subscribe.Add(model);
                obj.SaveChanges();

            }
            return RedirectToAction("Sent", "News");

        }
    }
}



               /* var mail = new MailMessage();
            

                                  
                    var _email = "agyekumessien@gmail.com"; 
                    var _epass = ConfigurationManager.AppSettings["EmailPassword"];
                    var _dispName = "Essien.net";
                    MailMessage myMessage = new MailMessage();
                    myMessage.To.Add(_email);
                  
                    myMessage.From = new MailAddress(_email, _dispName);
                    myMessage.IsBodyHtml = true;
                  //  myMessage.Bcc.Add(new MailAddress("two@gmail.com"));   Add more recipients
                 //   myMessage.Bcc.Add(new MailAddress("three@gmail.com"));
                    // var body = string.Format(model.name, model.emailid);




                    myMessage.Subject = "Essien.net Subscription";
                    myMessage.To.Add(new MailAddress("agyekumessien@yahoo.com"));  // replace with valid value 

                    mail.From = new MailAddress("agyekumessien@gmail.com");  // replace with valid value
                    mail.Subject = "Essien.net Subscription";
                    //mail.Body = string.Format(body, model.name, model.emailid);
                    mail.IsBodyHtml = true;

                    mail.To.Add(new MailAddress("agyekumessien@yahoo.com"));
                    // mail.To.Add(new MailAddress("two@gmail.com"));
                    // mail.To.Add(new MailAddress("three@gmail.com"));

                    // mail.Bcc.Add(new MailAddress("two@gmail.com"));
                    //  mail.Bcc.Add(new MailAddress("three@gmail.com"));


                    //If you don't want each recipient to see others in the recipient list, you can use the Bcc property and add recipients to that, just like with the To property:

                    mail.Bcc.Add(new MailAddress("agyekumessien@yahoo.com"));
                    // message.Bcc.Add(new MailAddress("two@gmail.com"));
                    // message.Bcc.Add(new MailAddress("three@gmail.com"));


                    mail.IsBodyHtml = true;

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
                        

            


        

        /*

                [HttpPost]
                public void Subscribe(string name, string email)
                {
                    try
                    {
                        //Ensures that the name and email are valid
                        if (string.IsNullOrEmpty(name) && string.IsNullOrEmpty(email))
                        {
                            //Save your user information to the Newsletter database
                        }
                    }
                    catch
                    {
                        //Exception - User probably already exists so ignore
                    }
                }

        */

        