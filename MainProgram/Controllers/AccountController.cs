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
using System.Data.Entity;
using System.Text;
//using Microsoft.Owin;

using System.Collections.Generic;

using System.Linq;





namespace MainProgram.Controllers
{
    [Authorize]
    public class AccountController : Controller
    {
        private ApplicationDbContext context = new ApplicationDbContext();
        private angulardemoEntities db = new angulardemoEntities();
        private AspNetUser dba = new AspNetUser();
        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;
        private ApplicationUser apa = new ApplicationUser();
        public AccountController()
        {
        }

        public AccountController(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
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

        //
        // GET: /Account/Login
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(LoginViewModel model, string returnUrl)     //LoginViewModel
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            // This doesn't count login failures towards account lockout
            // To enable password failures to trigger account lockout, change to shouldLockout: true
            var result = await SignInManager.PasswordSignInAsync(model.UserName, model.Password, model.RememberMe, shouldLockout: false);
            switch (result)
            {
                case SignInStatus.Success:

                    bool exists = db.AspNetUsers.Any(u => u.UserName == model.UserName && u.PasswordHash == model.Password);
                    if (exists)
                    {
                        var user = UserHelper.GetUserId();
                    }
                    return RedirectToAction("Index", "Home");
                // return RedirectToLocal(returnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.RequiresVerification:
                    return RedirectToAction("SendCode", new { ReturnUrl = returnUrl, RememberMe = model.RememberMe });
                case SignInStatus.Failure:
                default:
                    ModelState.AddModelError("", "Invalid login attempt.");
                    return View(model);
            }
        }

        //
        // GET: /Account/VerifyCode
        [AllowAnonymous]
        public async Task<ActionResult> VerifyCode(string provider, string returnUrl, bool rememberMe)
        {
            // Require that the user has already logged in via username/password or external login
            if (!await SignInManager.HasBeenVerifiedAsync())
            {
                return View("Error");
            }
            return View(new VerifyCodeViewModel { Provider = provider, ReturnUrl = returnUrl, RememberMe = rememberMe });
        }

        //
        // POST: /Account/VerifyCode
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> VerifyCode(VerifyCodeViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            // The following code protects for brute force attacks against the two factor codes. 
            // If a user enters incorrect codes for a specified amount of time then the user account 
            // will be locked out for a specified amount of time. 
            // You can configure the account lockout settings in IdentityConfig
            var result = await SignInManager.TwoFactorSignInAsync(model.Provider, model.Code, isPersistent: model.RememberMe, rememberBrowser: model.RememberBrowser);
            switch (result)
            {
                case SignInStatus.Success:
                    return RedirectToLocal(model.ReturnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.Failure:
                default:
                    ModelState.AddModelError("", "Invalid code.");
                    return View(model);
            }
        }

        //
        // GET: /Account/Register
        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }


        //
        // POST: /Account/Register
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register([Bind(Exclude = "UserPhoto")]RegisterViewModel model)
        {
            if (ModelState.IsValid)
            {
                // To convert the user uploaded Photo as Byte Array before save to DB 
                byte[] imageData = new Byte[49];
                if (Request.Files.Count > 0)
                {
                   
                    string fileName = HttpContext.Server.MapPath(@"~/Image/noImg.png");
                    HttpPostedFileBase poImgFile = Request.Files["UserPhoto"];


                    FileInfo fileInfo = new FileInfo(fileName);
                    long imageFileLength = fileInfo.Length;
                    FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read);
                    BinaryReader br = new BinaryReader(fs);
                    imageData = br.ReadBytes((int)imageFileLength + 50);
                    System.IO.File.ReadAllBytes(Server.MapPath("~/Image/noImg.png"));
                    model.ImagePath = Path.Combine(Server.MapPath("~/Image/noImg.png"), fileName);
                           
                           
                    }
                
                    var user = new ApplicationUser { FirstName = model.FirstName, LastName = model.LastName, ImagePath = model.ImagePath, Phone = model.Phone, Address = model.Address, FullName = model.FullName, UserName = model.FullName, Email = model.Email };
                    user.UserPhoto =imageData;
                    var result = await UserManager.CreateAsync(user, model.Password);
                    if (result.Succeeded)
                    {
                        await SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);

                        // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                        // Send an email with this link
                        // string code = await UserManager.GenerateEmailConfirmationTokenAsync(user.Id);
                        // var callbackUrl = Url.Action("ConfirmEmail", "Account", new { userId = user.Id, code = code }, protocol: Request.Url.Scheme);
                        // await UserManager.SendEmailAsync(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>");

                        return RedirectToAction("Index", "Home");
                    }
                    AddErrors(result);
                
                



                // If we got this far, something failed, redisplay form

            }

            return View(model);
        }








        //
        // GET: /Account/ConfirmEmail
        [AllowAnonymous]
        public async Task<ActionResult> ConfirmEmail(int userId, string code)
        {
            if (userId == default(int) || code == null)
            {
                return View("Error");
            }
            var result = await UserManager.ConfirmEmailAsync(userId, code);
            return View(result.Succeeded ? "ConfirmEmail" : "Error");
        }

        //
        // GET: /Account/ForgotPassword
        [AllowAnonymous]
        public ActionResult ForgotPassword()
        {
            return View();
        }

        //
        // POST: /Account/ForgotPassword
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ForgotPassword(ForgotPasswordViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = await UserManager.FindByNameAsync(model.Email);
                if (user == null || !(await UserManager.IsEmailConfirmedAsync(user.Id)))
                {
                    // Don't reveal that the user does not exist or is not confirmed
                    return View("ForgotPasswordConfirmation");
                }

                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                // Send an email with this link
                // string code = await UserManager.GeneratePasswordResetTokenAsync(user.Id);
                // var callbackUrl = Url.Action("ResetPassword", "Account", new { userId = user.Id, code = code }, protocol: Request.Url.Scheme);		
                // await UserManager.SendEmailAsync(user.Id, "Reset Password", "Please reset your password by clicking <a href=\"" + callbackUrl + "\">here</a>");
                // return RedirectToAction("ForgotPasswordConfirmation", "Account");
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ForgotPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ForgotPasswordConfirmation()
        {
            return View();
        }

        //
        // GET: /Account/ResetPassword
        [AllowAnonymous]
        public ActionResult ResetPassword(string code)
        {
            return code == null ? View("Error") : View();
        }

        //
        // POST: /Account/ResetPassword
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ResetPassword(ResetPasswordViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }
            var user = await UserManager.FindByNameAsync(model.Email);
            if (user == null)
            {
                // Don't reveal that the user does not exist
                return RedirectToAction("ResetPasswordConfirmation", "Account");
            }
            var result = await UserManager.ResetPasswordAsync(user.Id, model.Code, model.Password);
            if (result.Succeeded)
            {
                return RedirectToAction("ResetPasswordConfirmation", "Account");
            }
            AddErrors(result);
            return View();
        }

        //
        // GET: /Account/ResetPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ResetPasswordConfirmation()
        {
            return View();
        }

        //
        // POST: /Account/ExternalLogin
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ExternalLogin(string provider, string returnUrl)
        {
            // Request a redirect to the external login provider
            return new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        //
        // GET: /Account/SendCode
        [AllowAnonymous]
        public async Task<ActionResult> SendCode(string returnUrl, bool rememberMe)
        {
            var userId = await SignInManager.GetVerifiedUserIdAsync();
            if (userId == default(int))
            {
                return View("Error");
            }
            var userFactors = await UserManager.GetValidTwoFactorProvidersAsync(userId);
            var factorOptions = userFactors.Select(purpose => new SelectListItem { Text = purpose, Value = purpose }).ToList();
            return View(new SendCodeViewModel { Providers = factorOptions, ReturnUrl = returnUrl, RememberMe = rememberMe });
        }

        //
        // POST: /Account/SendCode
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> SendCode(SendCodeViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }

            // Generate the token and send it
            if (!await SignInManager.SendTwoFactorCodeAsync(model.SelectedProvider))
            {
                return View("Error");
            }
            return RedirectToAction("VerifyCode", new { Provider = model.SelectedProvider, ReturnUrl = model.ReturnUrl, RememberMe = model.RememberMe });
        }

        //
        // GET: /Account/ExternalLoginCallback
        [AllowAnonymous]
        public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        {
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync();
            if (loginInfo == null)
            {
                return RedirectToAction("Login");
            }

            // Sign in the user with this external login provider if the user already has a login
            var result = await SignInManager.ExternalSignInAsync(loginInfo, isPersistent: false);
            switch (result)
            {
                case SignInStatus.Success:
                    return RedirectToLocal(returnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.RequiresVerification:
                    return RedirectToAction("SendCode", new { ReturnUrl = returnUrl, RememberMe = false });
                case SignInStatus.Failure:
                default:
                    // If the user does not have an account, then prompt the user to create an account
                    ViewBag.ReturnUrl = returnUrl;
                    ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
                    return View("ExternalLoginConfirmation", new ExternalLoginConfirmationViewModel { Email = loginInfo.Email });
            }
        }

        //
        // POST: /Account/ExternalLoginConfirmation
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ExternalLoginConfirmation(ExternalLoginConfirmationViewModel model, string returnUrl)
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("Index", "Manage");
            }

            if (ModelState.IsValid)
            {
                // Get the information about the user from the external login provider
                var info = await AuthenticationManager.GetExternalLoginInfoAsync();
                if (info == null)
                {
                    return View("ExternalLoginFailure");
                }
                var user = new ApplicationUser { UserName = model.Email, Email = model.Email };
                var result = await UserManager.CreateAsync(user);
                if (result.Succeeded)
                {
                    result = await UserManager.AddLoginAsync(user.Id, info.Login);
                    if (result.Succeeded)
                    {
                        await SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
                        return RedirectToLocal(returnUrl);
                    }
                }
                AddErrors(result);
            }

            ViewBag.ReturnUrl = returnUrl;
            return View(model);
        }

        //
        // POST: /Account/LogOff
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            AuthenticationManager.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            return RedirectToAction("Index", "Home");
        }

        //
        // GET: /Account/ExternalLoginFailure
        [AllowAnonymous]
        public ActionResult ExternalLoginFailure()
        {
            return View();
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (_userManager != null)
                {
                    _userManager.Dispose();
                    _userManager = null;
                }

                if (_signInManager != null)
                {
                    _signInManager.Dispose();
                    _signInManager = null;
                }
            }

            base.Dispose(disposing);
        }

        #region Helpers
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            return RedirectToAction("Index", "Home");
        }

        internal class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }

            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }





        public AspNetUser GetUser(string _usrName)
        {
            var cust = (from c in db.AspNetUsers
                        where c.UserName == _usrName
                        select c).FirstOrDefault();
            return cust;
        }



        // GET: /Menu/Edit/5
        [HttpGet]
        public ActionResult UserProfile(int? id)
        {

            AspNetUser Objan = db.AspNetUsers.Find(id);

            // ViewBag.id = new SelectList(obj.NoteLists, "Id", "NoteListText", Objan.NoteList1);

            return View(Objan);
        }

        // POST: /Menu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.

        public ActionResult UserProfile(AspNetUser Objpdn)
        {
            /*  int userId = Convert.ToInt32(Session["UserId"]);
              var user = UserHelper.GetUserId();

              if (user == null)
              {
                  return RedirectToAction("Login", "Account");
              }*/




            using (var context = new angulardemoEntities())
            {

                //  // Objpdn.UserId = userId;
                // Objpdn.UserId = Convert.ToInt32(user);

                context.Entry(Objpdn).State = EntityState.Modified;
                context.SaveChanges(); //Must be in using block
                return View(Objpdn);

            }



        }


        [HttpPost]
        public ActionResult Index([Bind(Exclude = "Image")]AspNetUser model)
        {

            var user = UserHelper.GetUserId();

            if (user == null)
            {

                return RedirectToAction("Login", "Account", new { id = model.Id });
            }


            else
            {


                // To convert the user uploaded Photo as Byte Array before save to DB 
                byte[] imageData;
                if (Request.Files.Count > 0)
                {
                    HttpPostedFileBase poImgFile = Request.Files["Image"];
                    var extension = Path.GetExtension(poImgFile.FileName);
                    var fileName = Path.GetFileName(poImgFile.FileName) + extension;

                    string path = System.IO.Path.Combine(HttpContext.Server.MapPath("~/Upload/"), fileName + model.Image);
                    model.ImagePath = Path.Combine(HttpContext.Server.MapPath("~/Upload/"), fileName);
                    using (var binary = new BinaryReader(poImgFile.InputStream))
                    {
                        imageData = binary.ReadBytes(poImgFile.ContentLength);
                    }

                    using (angulardemoEntities entities = new angulardemoEntities())
                    {
                        AspNetUser updatedCustomer = (from c in entities.AspNetUsers
                                                      where c.UserId == model.UserId
                                                      select c).FirstOrDefault();
                        updatedCustomer.Image = model.Image;
                        updatedCustomer.ImagePath = model.ImagePath;
                        model.Image = imageData;
                        db.Entry(model).State = EntityState.Modified;
                        db.SaveChanges(); //Must be in using block






                        // model.Image = imageData;


                        //db.Entry(model).State = EntityState.Modified;
                        // db.SaveChanges(); //Must be in using block


                    }


                    return RedirectToAction("Index", "Home");
                }


                // If we got this far, something failed, redisplay form
                return View(model);
            }
        }

          

        [HttpGet]
        public ActionResult Index()
        {

            var user = UserHelper.GetUserId();

            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }
            else
            {

                AspNetUser usr = db.AspNetUsers.Find(Convert.ToInt32(user));
                return View(usr);

            }


        }


        [HttpGet]
        public ActionResult UpdateProfilePicAsync(int? id)
        {

            var user = UserHelper.GetUserId();

            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }
            else
            {

                AspNetUser usr = db.AspNetUsers.Find(Convert.ToInt32(user));
                return View(usr);

            }


        }


 // POST:
        // POST:
        [HttpPost]

        public ActionResult UpdateProfilePicAsync([Bind(Exclude = "Image")]AspNetUser model)
        {
            var user = UserHelper.GetUserId();

            if (model.Id == null)
            {
                db.AspNetUsers.Add(model);
                db.SaveChanges();
                return RedirectToAction("Login", "Account", new { id = model.Id });
            }


            else
            {


                // To convert the user uploaded Photo as Byte Array before save to DB 
                byte[] imageData;

                if (Request.Files.Count > 0)
                {
                    HttpPostedFileBase poImgFile = Request.Files["Image"];
                    var extension = Path.GetExtension(poImgFile.FileName);
                    var fileName = Path.GetFileName(poImgFile.FileName) + extension;

                    string path = System.IO.Path.Combine(HttpContext.Server.MapPath("~/Upload/"), fileName + model.Image + model.UserPhoto);
                    model.ImagePath = Path.Combine(HttpContext.Server.MapPath("~/Upload/"), fileName);
                    using (var binary = new BinaryReader(poImgFile.InputStream))
                    {
                        imageData = binary.ReadBytes(poImgFile.ContentLength);
                      
                    }

                    using (angulardemoEntities entities = new angulardemoEntities())
                    {
                        AspNetUser updatedCustomer = (from c in entities.AspNetUsers
                                                      where c.UserId == model.UserId
                                                      select c).FirstOrDefault();
                        updatedCustomer.Image = model.Image;
                        updatedCustomer.ImagePath = model.ImagePath;
                        model.Image = imageData;
                        model.UserPhoto = imageData;
                        db.Entry(model).State = EntityState.Modified;
                        db.SaveChanges(); //Must be in using block






                        // model.Image = imageData;


                        //db.Entry(model).State = EntityState.Modified;
                        // db.SaveChanges(); //Must be in using block


                    }


                    return RedirectToAction("Index", "Home");
                }


                // If we got this far, something failed, redisplay form
                return View(model);
            }
        }






/*

        [HttpGet]
        public ActionResult GetUserProfileByIdAsync(ProfileModel model, string userId)
        {
            var userProfile = new ProfileModel();

            var usr = UserHelper.GetUserId();


            AspNetUser user = db.AspNetUsers.Find(Convert.ToInt32(usr));

            if (user == null || user.UserId != userId) return null;




            AspNetUser obj = new AspNetUser
                {
                    UserId = user.UserId,
                    Email = user.Email,
                    UserName = user.UserName,
                    Phone = user.PhoneNumber,
                BirthDate = user.BirthDate,
                    FullName = user.FullName,
                    FirstName = user.FirstName,
                   Address = user.Address,
                    LastName = user.LastName,
                    //IsEmailVerified = user.EmailConfirmed,
                    // IsTwoFactorOn = user.TwoFactorEnabled,
                    UserPhoto = user.UserPhoto,
              


                    Image = new List<AspNetUser>(db.AspNetUsers.Where(x => x.UserId == User.).Select(n =>
                             new AspNetUser()
                             {
                                 ImageId = n.ImageId,
                                 FullImageUrl = n.FullImageUrl,
                                  Image = n.Image,
                                 //  PostalCode = n.PostalCode,
                                 //  Type = n.Type,
                                 UserId = n.UserId
                             }).ToList()),
                };

                return View(userProfile);
            }.

            */

        

       




/*

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public async Task<ActionResult> GetUserProfileByIdAsync( tbh_Images ImgModel, FormCollection formData)
        {
            var userProfile = new ProfileModel();

                   var usr = UserHelper.GetUserId();

                    if (usr == null)
                    {
                        return RedirectToAction("Login", "Account");
                    }


          //  if (model.Id == 0)
          //  {
             //   db.AspNetUsers.Add(model);
              //  db.SaveChanges();
             //   return RedirectToAction("Index", "Home", new { id = model.UserId });
          //  }

            if (ImgModel.ImageId == 0)
            {
                var userImg = new tbh_Images();
                { 
                tbh_Images user = db.tbh_Images.Find(Convert.ToInt32(usr));
                await UpdateProfilePicAsync(formData);

                userImg.Image = ImgModel.Image;
                userImg.FullImageUrl = ImgModel.FullImageUrl;


                }
                db.tbh_Images.Add(ImgModel);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }

         
           else
            {


                userProfile = new ProfileModel();
                {

                    using (var context = new angulardemoEntities())
                    {
                        tbh_Images user = db.tbh_Images.Find(Convert.ToInt32(usr));
                       // await UpdateProfilePicAsync(formData, user);
                        //  // Objpdn.UserId = userId;
                        // Objpdn.UserId = Convert.ToInt32(user);


                        if (userProfile.UserId > 0)
                        {
                            db.Entry(userProfile).State = EntityState.Modified;
                            db.SaveChanges(); //Must be in using block
                        }
                       


                    }


                    // user.FirstName = formData["Firstname"];

                    // user.LastName = formData["Lastname"];

                    // user.FullName = formData["Fullname"];
                    //  user.PhoneNumber = formData["phone"];

                    //  db.AspNetUsers.Add(user);
                    // db.SaveChanges();
                    // var existingEntity = db.AspNetUsers.Find(model.UserId);
                    // db.Entry(existingEntity).CurrentValues.SetValues(model.UserId);
                    // db.Entry(model).State = EntityState.Modified;
                    // db.SaveChanges();

                }


                return View(userProfile);
                }
        }





        private async Task<ProfileModel> UpdateProfilePicAsync(FormCollection formdata)
        {
            ProfileModel model = new ProfileModel();

            // First we create an empty array to store old file info
            var oldProfilePic = new string[1];
            // we will store path of old file to delete in an empty array.
            oldProfilePic[0] = Path.Combine(HttpContext.Server.MapPath("~/Image/noImg.png"));

            // Create the Profile Image Path
            var profPicPath = HttpContext.Server.MapPath("~/Upload/");

            // If we have received any files for update, then we update the file path after saving to server
            // else we return the user without any changes
            if (formdata.Count <= 0) return model;

            var extension = Path.GetExtension(formdata[0]);
            var filename = DateTime.Now.ToString("yymmssfff");
            var path = Path.Combine(profPicPath, filename) + extension;
            var dbImagePath = Path.Combine(HttpContext.Server.MapPath("~/Upload/"), filename) + extension;
           // var usr = new tbh_Images { FullImageUrl = user.FullImageUrl, Image = user.Image };

           // user.FullImageUrl = dbImagePath;

            // Copying New Files to the Server - profile Folder
            using (var stream = new FileStream(path, FileMode.Create))
            {
                if (formdata.Count <= 0) return model;
                {
                    await stream.CopyToAsync(stream);

                    // Delete old file after successful update
                    if (!System.IO.File.Exists(oldProfilePic[0])) return model;

                    System.IO.File.SetAttributes(oldProfilePic[0], FileAttributes.Normal);
                    System.IO.File.Delete(oldProfilePic[0]);


                    db.Entry(formdata).State = EntityState.Modified;
                    db.SaveChanges(); //Must be in using block


                    return model;
                }
            }
        }

        */




 












    

        public FileContentResult Image()
        {
            if (User.Identity.IsAuthenticated)
            {
                var Id = Convert.ToInt32(UserHelper.GetUserId());

                if (Id == null)
                {
                    string fileName = HttpContext.Server.MapPath("~/Upload/");

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

                return new FileContentResult(userImage.Image, "image/jpeg");
            }
            else
            {
                string fileName = HttpContext.Server.MapPath("~/Upload/");

                byte[] imageData = null;
                FileInfo fileInfo = new FileInfo(fileName);
                long imageFileLength = fileInfo.Length;
                FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read);
                BinaryReader br = new BinaryReader(fs);
                imageData = br.ReadBytes((int)imageFileLength);
                return File(imageData, "image/png");

            }

        }



        /*
         * 
         * 
         *  // POST:   NEW
                [HttpPost]

                public ActionResult UpdateProfilePicAsync([Bind(Exclude = "Image")]AspNetUser model)
                {
                    var user = UserHelper.GetUserId();

                    if (user == null)
                    {
                        return RedirectToAction("Login", "Account");
                    }
            
                        // To convert the user uploaded Photo as Byte Array before save to DB 
                        byte[] imageData = null;
                        if (Request.Files.Count > 0)
                        {
                            HttpPostedFileBase poImgFile = Request.Files["Image"];
                            var extension = Path.GetExtension(poImgFile.FileName);
                            var fileName = Path.GetFileName(poImgFile.FileName) + extension;

                            string path = System.IO.Path.Combine(HttpContext.Server.MapPath("~/Upload/"), fileName + model.Image);
                            model.ImagePath = Path.Combine(HttpContext.Server.MapPath("~/Upload/"), fileName);
                            using (var binary = new BinaryReader(poImgFile.InputStream))
                            {
                                imageData = binary.ReadBytes(poImgFile.ContentLength);
                            }
                            using (var stream = new FileStream(path, FileMode.Create))
                            {
                      
                                model.Image = imageData;
                      
                                stream.CopyTo(stream);
                                var existingEntity = db.AspNetUsers.Find(model.Id);
                                db.Entry(existingEntity).CurrentValues.SetValues(model);

                                db.SaveChanges();
                            }


                            return RedirectToAction("Index", "Home");
                        }

            
                    // If we got this far, something failed, redisplay form
                    return View(model);
              
                    }
         * 
         * 
         * 
         * 
         * 

                [HttpPost]
                public ActionResult UpdateProfilePicAsync([Bind(Exclude = "UserPhoto")] AspNetUser imageModel)
                {
                    if (ModelState.IsValid)
                    {
                        byte[] imageData = null;
                        // string fileName = HttpContext.Server.MapPath(@"~/Image/noImg.png");
                        HttpPostedFileBase profpicfile = Request.Files["UserPhoto"];
            
                        // FileInfo fileInfo = new FileInfo(fileName);

                        var model = db.AspNetUsers.Find(imageModel.Id);
                        //imageData = model.UserPhoto;
                        if (profpicfile != null && profpicfile.ContentLength > 0)
                        {
                            var fileName = Path.GetFileName(profpicfile.FileName);
                            string path = System.IO.Path.Combine(HttpContext.Server.MapPath("~/Upload/"), fileName);
                   

                          //  string fullPath = Request.MapPath("~" + imageData);
                          //  if (System.IO.File.Exists(fullPath))
                           // {
                            //    System.IO.File.Delete(fullPath);
                           // }
                            using (var stream = new FileStream(path, FileMode.Create)) 
                            {
                       
                                var user = new AspNetUser { FirstName = model.FirstName, LastName = model.LastName, ImagePath = model.ImagePath, Phone = model.Phone, Address = model.Address, FullName = model.FullName, UserName = model.FullName, Email = model.Email };
                                user.UserPhoto = imageData;
                                stream.CopyTo(stream);
                                //model.UserPhoto = userDetails.UserPhoto;
                                var existingEntity = db.AspNetUsers.Find(imageModel.Id);
                                db.Entry(existingEntity).CurrentValues.SetValues(imageModel);

                                // db.Entry(userDetails).State = EntityState.Modified;

                                db.SaveChanges();
                                return RedirectToAction("Index");
                            }
                        }

                        }
                        return View(imageModel);
                    }
                */







/*
 public ActionResult UpdateProfilePicAsync(AspNetUser userDetails)
 {
     byte[] dbImagePath = null;
     string fileName = HttpContext.Server.MapPath(@"~/Image/noImg.png");
     HttpPostedFileBase poImgFile = Request.Files["UserPhoto"];
     FileInfo fileInfo = new FileInfo(fileName);
     long imageFileLength = fileInfo.Length;
     // First we create an empty array to store old file info
     var oldProfilePic = new string[1];
     // we will store path of old file to delete in an empty array.
     oldProfilePic[0] = Path.Combine(Server.MapPath("~/Image/noImg.png") + userDetails.UserPhoto);

     // Create the Profile Image Path
     var profPicPath = Server.MapPath("~/Image/noImg.png");

     // If we have received any files for update, then we update the file path after saving to server
     // else we return the user without any changes
     if (Request.Files.Count == 0)
     {
         var extension = Path.GetExtension(poImgFile.FileName);
         var filename = DateTime.Now.ToString("yymmssfff");
         var path = Path.Combine(profPicPath, filename) + extension;
         //  var dbImagePath = Path.Combine("{Path.DirectorySeparatorChar}Image{Path.DirectorySeparatorChar}user{Path.DirectorySeparatorChar}profile{Path.DirectorySeparatorChar}", filename) + extension;

         userDetails.UserPhoto = dbImagePath;

         // Copying New Files to the Server - profile Folder
         FileStream fs = new FileStream(path, FileMode.Create);

     }
     // Delete old file after successful update
     if (!System.IO.File.Exists(oldProfilePic[0]))
     {
         System.IO.File.SetAttributes(oldProfilePic[0], FileAttributes.Normal);
         System.IO.File.Delete(oldProfilePic[0]);

         db.Entry(userDetails).State = EntityState.Modified;
         db.SaveChanges();
     }

     return View(userDetails);
 }

*/










        // GET: /Menu/Edit/5

        /*   public ActionResult UserProfile(int? id)
           {

               AspNetUser Objan = db.AspNetUsers.Find(id);

               // ViewBag.id = new SelectList(obj.NoteLists, "Id", "NoteListText", Objan.NoteList1);

               return View(Objan);
           }

           // POST: /Menu/Edit/5
           // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
           // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
           [HttpPost]
           [ValidateAntiForgeryToken]
           [ValidateInput(false)]
           public ActionResult UserProfile(AspNetUser Objpdn)
           {
               /*  int userId = Convert.ToInt32(Session["UserId"]);
                 var user = UserHelper.GetUserId();

                 if (user == null)
                 {
                     return RedirectToAction("Login", "Account");
                 }*/

        /*

            if (Objpdn.Id == 0)
            {
                db.AspNetUsers.Add(Objpdn);
                db.SaveChanges();
                return RedirectToAction("Index", "Home", new { id = Objpdn.UserId });
            }
            else
            {
                using (var context = new angulardemoEntities())
                {

                    //  // Objpdn.UserId = userId;
                    // Objpdn.UserId = Convert.ToInt32(user);

                    context.Entry(Objpdn).State = EntityState.Modified;
                    context.SaveChanges(); //Must be in using block


                }

                return View(Objpdn);

            }

        }
        /*

     /*   public ActionResult UserProfile()
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

            return View();

        */




        #endregion

    }
}
