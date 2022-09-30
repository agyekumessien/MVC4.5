using MainProgram.Edm;
using MainProgram.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MainProgram.Controllers
{
    public class LanguageController : Controller
    {
        LanguageContext obj = new LanguageContext();
        // GET: Language
        public ActionResult Index()
        {
            LanguageVM LM = new LanguageVM();
            LM.LanguageList = new SelectList(LM.LanguageList, "LanguageId, LanguageName");

             
            return View();
        }

       
    }
}