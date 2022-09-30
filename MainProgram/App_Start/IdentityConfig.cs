using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using MainProgram.Core;

using System.Web.Mail;
using System.Web;


namespace MainProgram
{
    public class EmailService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Plug in your email service here to send an email.
            return Task.FromResult(0);
        }
    }

    public class SmsService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Plug in your SMS service here to send a text message.
            return Task.FromResult(0);
        }
    }

    // Configure the application user manager used in this application. UserManager is defined in ASP.NET Identity and is used by the application.
   public class ApplicationUserManager : UserManager<ApplicationUser, int> 
{ 
    public ApplicationUserManager(IUserStore<ApplicationUser, int> store) 
        : base(store) 
    { 
    } 

    public static ApplicationUserManager Create(
        IdentityFactoryOptions<ApplicationUserManager> options, IOwinContext context)  
    { 
        var manager = new ApplicationUserManager(
            new MainProgram.Core.ApplicationDbContext.CustomUserStore(context.Get<ApplicationDbContext>())); 
        // Configure validation logic for usernames 
        manager.UserValidator = new UserValidator<ApplicationUser, int>(manager) 
        { 
            AllowOnlyAlphanumericUserNames = false, 
            RequireUniqueEmail = true 
        }; 
        // Configure validation logic for passwords 
        manager.PasswordValidator = new PasswordValidator 
        { 
            RequiredLength = 6, 
            RequireNonLetterOrDigit = true, 
            RequireDigit = true, 
            RequireLowercase = true, 
            RequireUppercase = true, 
        }; 
        // Register two factor authentication providers. This application uses Phone 
        // and Emails as a step of receiving a code for verifying the user 
        // You can write your own provider and plug in here. 
        manager.RegisterTwoFactorProvider("PhoneCode", 
            new PhoneNumberTokenProvider<ApplicationUser, int> 
        { 
            MessageFormat = "Your security code is: {0}" 
        }); 
        manager.RegisterTwoFactorProvider("EmailCode", 
            new EmailTokenProvider<ApplicationUser, int> 
        { 
            Subject = "Security Code", 
            BodyFormat = "Your security code is: {0}" 
        }); 
        manager.EmailService = new EmailService(); 
        manager.SmsService = new SmsService(); 
        var dataProtectionProvider = options.DataProtectionProvider; 
        if (dataProtectionProvider != null) 
        { 
            manager.UserTokenProvider = 
                new DataProtectorTokenProvider<ApplicationUser, int>(
                    dataProtectionProvider.Create("ASP.NET Identity")); 
        } 
        return manager; 
    } 
}
        // Configure the RoleManager used in the application. RoleManager is defined in the ASP.NET Identity core assembly

   public class ApplicationRoleManager : RoleManager<MainProgram.Core.ApplicationDbContext.CustomRole, int>
   {
       public ApplicationRoleManager(IRoleStore<MainProgram.Core.ApplicationDbContext.CustomRole, int> roleStore)
           : base(roleStore)
       {
       }

       public static ApplicationRoleManager Create(IdentityFactoryOptions<ApplicationRoleManager> options, IOwinContext context)
       {
           return new ApplicationRoleManager(new RoleStore<MainProgram.Core.ApplicationDbContext.CustomRole, int, MainProgram.Core.ApplicationDbContext.CustomUserRole>(context.Get<ApplicationDbContext>()));
       }
   }



      /*   public class ApplicationDbInitializer : DropCreateDatabaseIfModelChanges<ApplicationDbContext>
         {
             protected override void Seed(ApplicationDbContext context)
             {
                 InitializeIdentityForEF(context);
                 base.Seed(context);
             }

             //Create User=Admin@Admin.com with password=Admin@123456 in the Admin role        
             public static void InitializeIdentityForEF(ApplicationDbContext db)
             {
                 var userManager = HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>();
                 var roleManager = HttpContext.Current.GetOwinContext().Get<ApplicationRoleManager>();
                 const string name = "agyekumessien@yahoo.com";
                 const string password = "Agyekum1";
                 const string roleName = "Admin";

                 //Create Role Admin if it does not exist
                 var role = roleManager.FindByName(roleName);
                 if (role == null)
                 {
                     role = new MainProgram.Models.ApplicationDbContext.CustomRole(roleName);
                     var roleresult = roleManager.Create(role);
                 }

                 var user = userManager.FindByName(name);
                 if (user == null)
                 {
                     user = new ApplicationUser { UserName = name, Email = name };
                     var result = userManager.Create(user, password);
                     result = userManager.SetLockoutEnabled(user.Id, false);
                 }

                 // Add user admin to Role Admin if not already added
                 var rolesForUser = userManager.GetRoles(user.Id);
                 if (!rolesForUser.Contains(role.Name))
                 {
                     var result = userManager.AddToRole(user.Id, role.Name);
                 }
             }
         }

     */
        // Configure the application sign-in manager which is used in this application.
        public class ApplicationSignInManager : SignInManager<ApplicationUser, int>
        {
            public ApplicationSignInManager(ApplicationUserManager userManager, IAuthenticationManager authenticationManager)
                : base(userManager, authenticationManager)
            {
            }

            public override Task<ClaimsIdentity> CreateUserIdentityAsync(ApplicationUser user)
            {
                return user.GenerateUserIdentityAsync((ApplicationUserManager)UserManager);
            }

            public static ApplicationSignInManager Create(IdentityFactoryOptions<ApplicationSignInManager> options, IOwinContext context)
            {
                return new ApplicationSignInManager(context.GetUserManager<ApplicationUserManager>(), context.Authentication);
            }
        }
    }
