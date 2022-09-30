using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web.Mvc;
using MainProgram.Edm;
using System.IO;
using System.Net;
using PagedList;
using PagedList.Mvc;
using MainProgram.Core;
using MainProgram.Models;


namespace MainProgram.Controllers
{
    public class ReplyController : Controller
    {
        angulardemoEntities db = new angulardemoEntities();
        // GET: Reply
        public ActionResult Index()
        {
            var threads = db.Threads.Include(x => x.tbh_Replies).ToList();

           // ViewBag.reply = db.tbh_Replies.Where(x => x.ReplyId.Equals("Id")).ToList();
           

            return View(threads);
        }


        public ActionResult PostReply()
        {
            return View();
        }
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult PostReply(tbh_RepliesVM post)
        {
            angulardemoEntities obj = new angulardemoEntities();
            {

                if (ModelState.IsValid)
                {
                   
                    string fileName = Path.GetFileNameWithoutExtension(post.ImageFile.FileName);
                    string extension = Path.GetExtension(post.ImageFile.FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    //  fileName = System.IO.Path.GetFileName(thread.ImageFile.FileName);
                    post.ImagePath = "/Image/" + fileName;
                    fileName = Path.Combine(Server.MapPath("/Image/"), fileName);
                    post.ImageFile.SaveAs(fileName);
                    int UserId = Convert.ToInt32(Session["UserId"]);
                    if (UserId == 0)
                   // {
                     //   return RedirectToAction("Login", "Account");
                   // }
                    using (angulardemoEntities dbm = new angulardemoEntities())
                    {
                       // dbm.tbh_Replies.Add(post);
                       // dbm.SaveChanges();
                    }


                
           int userId = Convert.ToInt32(Session["UserId"]);
           var user = UserHelper.GetUserId();
            //  if (userId == 0)
          //{
            //   return RedirectToAction("Login", "Account");
           // }
            tbh_Replies r = new tbh_Replies();
            r.ReplyText = post.Reply;
            r.ThreadId = post.TID;
            r.UserId = userId;
            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;
            obj.tbh_Replies.Add(r);
            obj.SaveChanges();

            return RedirectToAction("Index");
        }










                    ModelState.Clear();




                }


                try
                {
                    // Your code...
                    // Could also be before try if you know the exception occurs in SaveChanges




                }
                catch (RetryLimitExceededException /* dex */)
                {
                    //Log the error (uncomment dex variable name and add a line here to write a log.
                    ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your system administrator.");
                }

                return RedirectToAction("Index");
            }

        

        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbh_Replies post = obj.tbh_Replies.Include(s => s.tbh_Replies1).SingleOrDefault(s => s.ReplyId == id);
            tbh_Replies post2 = obj.tbh_Replies.Include(s => s.tbh_Replies1).Single(s => s.ReplyId == id);
            {
                tbh_Replies imageModel = new tbh_Replies();
                
                using (angulardemoEntities db = new angulardemoEntities())
                {
                    imageModel = db.tbh_Replies.Where(x => x.ReplyId == id).FirstOrDefault();
                }
            }
            if (post == null)
            {
                return HttpNotFound();
            }
            return View(post);
        }


        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Post ObjThread = obj.Posts.Find(id);
            if (ObjThread == null)
            {
                return HttpNotFound();
            }
            ViewBag.PostId = new SelectList(obj.Threads, "Id", "PostText", ObjThread.Post1);

            return View(ObjThread);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(Post ObjThread)
        {
            if (ModelState.IsValid)
            {


                obj.Entry(ObjThread).State = EntityState.Modified;
                obj.SaveChanges();
                return RedirectToAction("Details", "Thread", new { id = ObjThread.PostId });
            }
            

            return View(ObjThread);
        }
        // GET: /Menu/Delete/5


        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Post ObjThread = obj.Posts.Find(id);
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
                Post ObjThread = obj.Posts.Find(id);
                obj.Posts.Remove(ObjThread);
                obj.SaveChanges();
            }

            catch (RetryLimitExceededException/* dex */)
            {
                //Log the error (uncomment dex variable name and add a line here to write a log.
                return RedirectToAction("Delete", new { id = id, saveChangesError = true });
            }
            return RedirectToAction("Index");
        }







        private angulardemoEntities obj = new angulardemoEntities();

        private ActionResult ModelBind()
        {
            var Posts = obj.Threads;
            return View(Posts.ToList());
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                obj.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}


