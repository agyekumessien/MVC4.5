using Microsoft.Owin;
using Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using MainProgram.Core;

using System.Web;
using Microsoft.AspNet.Identity.Owin;


[assembly: OwinStartupAttribute(typeof(MainProgram.Startup))]
namespace MainProgram
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            CreateUserAndRoles();
            // CreateUserRoles();

        }

        public void CreateUserAndRoles()
        {
            ApplicationDbContext context = new ApplicationDbContext();
            var roleManager = new RoleManager<MainProgram.Core.ApplicationDbContext.CustomRole, int>(new RoleStore<MainProgram.Core.ApplicationDbContext.CustomRole, int, MainProgram.Core.ApplicationDbContext.CustomUserRole>(context));
            var UserManager = new UserManager<ApplicationUser, int>(new UserStore<ApplicationUser, MainProgram.Core.ApplicationDbContext.CustomRole, int, MainProgram.Core.ApplicationDbContext.CustomUserLogin, MainProgram.Core.ApplicationDbContext.CustomUserRole, MainProgram.Core.ApplicationDbContext.CustomUserClaim>(context));

            // In Startup iam creating first Admin Role and creating a default Admin User     
            if (!roleManager.RoleExists("Admin"))
            {
                //first we create Admin rool   
                var role = new MainProgram.Core.ApplicationDbContext.CustomRole();
                role.Name = "Admin";
                roleManager.Create(role);
            }

           

            //Create default User
            if (UserManager.FindByName("Admin") == null)
            {
                var user = new ApplicationUser();
                user.UserName = "agyekumessien@yahoo.com";
                user.Email = "agyekumessien@yahoo.com";
                string pwd = "Agyekum1";
                var newUser = UserManager.Create(user, pwd);
                if (newUser.Succeeded)
                {
                    var result = UserManager.AddToRole(user.Id, "Admin");
                }


            }
        }
    }
        /*
                  public void CreateUserRoles()
                  {
                     ApplicationDbContext context = new ApplicationDbContext();
                       //angulardemoEntities context = new angulardemoEntities();
                      var RoleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
                      var Usermanager = new UserManager<IdentityUser>(new UserStore<IdentityUser>(context));
                      if (!RoleManager.RoleExists("SupperAdmin"))
                      {
                          //Create SuperAdmin role
                          var role = new IdentityRole("SuperAdmin");
                          RoleManager.Create(role);

                          //Create default User
                          var user = new IdentityUser();
                          user.UserName = "agyekumessien@yahoo.com";
                          user.Email = "agyekumessien@yahoo.com";
                          string pwd = "Agyekum1";
                          var newUser = Usermanager.Create(user, pwd);
                          if (newUser.Succeeded)
                          {
                              var result =Usermanager.AddToRole(user.Id, "SuperAdmin");
                          }
                      }*/
   }
    
    
