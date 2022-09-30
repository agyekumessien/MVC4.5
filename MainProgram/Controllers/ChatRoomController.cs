﻿using MainProgram.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using MainProgram.Edm;
using MainProgram.Models;

namespace MainProgram.Core
{
    public class ChatRoomController : Controller
    {
        angulardemoEntities db = new angulardemoEntities();
        // GET: ChatRoom
        public ActionResult Index()
        {
            var pcs = db.Threads.Include(x => x.tbh_Replies).ToList();
            return View(pcs);
        }

        //public ActionResult PostReply()
        // {

        //    var threads = db.Threads.Include(x => x.tbh_Replies).ToList();
        //   return View(threads);
        //  }



        // Post: ChatRoom
        [HttpPost]
        public ActionResult PostReply(tbh_RepliesVM obj)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            //  if (userId == 0)
            //{
            //   return RedirectToAction("Login", "Account");
            // }
            tbh_Replies r = new tbh_Replies();
            r.ReplyText = obj.Reply;
            r.ThreadId = obj.TID;
            r.UserId = userId;

            r.UserId = Convert.ToInt32(user);
            r.CreatedOn = DateTime.Now;

            db.tbh_Replies.Add(r);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        public ActionResult PostThread(string ThreadText)
        {

            int userId = Convert.ToInt32(Session["UserId"]);
            var user = UserHelper.GetUserId();
            //  if (userId == 0)
            //{
            //   return RedirectToAction("Login", "Account");
            // }
            Thread t = new Thread();
            t.ThreadText = ThreadText;
            t.CreatedOn = DateTime.Now;
            t.UserId = userId;
            t.UserId = Convert.ToInt32(user);

            db.Threads.Add(t);
            db.SaveChanges();

            return RedirectToAction("Index");
        }




    }
}