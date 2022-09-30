using System;
using System.Globalization;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using MainProgram.Core;
using MainProgram.Edm;
using System.IO;
using MainProgram.Models;
using Microsoft.AspNet.Identity.EntityFramework;


namespace MainProgram.Controllers
{
    public class UserProfileController : Controller
    {

         private angulardemoEntities db = new angulardemoEntities();
        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;

        public UserProfileController()
        {
        }

        public UserProfileController(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
        {
            UserManager = userManager;
            SignInManager = signInManager;
        }

        public ApplicationSignInManager SignInManager
        {
            get
            {
                return _signInManager ?? HttpContext.GetOwinContext().Get<ApplicationSignInManager>();
            }
            private set
            {
                _signInManager = value;
            }
        }

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }



        public ActionResult CreateUser(FormCollection form)
        {

            var Usermanager = new UserManager<IdentityUser>(new UserStore<IdentityUser>(db));
            string UserName = form["txtEmail"];
            string email = form["txtEmail"];
            string pwd = form["txtPassword"];

            //Create default User
            var user = new IdentityUser();
            user.UserName = UserName;
            user.Email = email;

            var newUser = Usermanager.Create(user, pwd);

            return View();
        }




   public ActionResult UserProfile()
        {
            return View();
        }




        // [HttpPost, Authorize, ValidateAntiForgeryToken]
        [HttpPost, ]
   public ActionResult UserProfile(UserProfileModel usp, FormCollection form, [Bind(Exclude = "UserPhoto")]RegisterViewModel model)
        {
            if (ModelState.IsValid)
            {


                //  string currentUserId2 = UserHelper.GetUserProfile();
                if (User.Identity.IsAuthenticated)
                {
                    var currentUserId = Convert.ToInt32(UserHelper.GetUserId());
                    using (angulardemoEntities obj = new angulardemoEntities())
                    {


                        var Usermanager = new UserManager<IdentityUser>(new UserStore<IdentityUser>(db));
                      
                       var user = new ApplicationUser { FirstName = model.FirstName, LastName = model.LastName, ImagePath = model.ImagePath, Phone = model.Phone, Address = model.Address, FullName = model.FullName, UserName = model.FullName, Email = model.Email };
                   
                      
                        if (UserManager.FindById(currentUserId) == null) 
                           
                        {
                            var modello = new UserProfileModel();

                            usp.FullName = model.FullName;

                            usp.Email = model.Email;
                            usp.Address = model.Address;
                            //   db.AspNetUsers.Add(usp);
                        }
                    }
                    return View(usp);
                }

                ViewBag.Message = "Profile is saved successfully.";
            }

            return View(model);



      
        }
    }
}