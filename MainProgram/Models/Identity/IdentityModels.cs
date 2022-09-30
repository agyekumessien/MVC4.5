using System.Data.Entity;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Threading;
using System.ComponentModel;
using System.Web;

namespace MainProgram.Core
{
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser<int, MainProgram.Core.ApplicationDbContext.CustomUserLogin, MainProgram.Core.ApplicationDbContext.CustomUserRole,
        MainProgram.Core.ApplicationDbContext.CustomUserClaim>
    {

        public string FirstName { get; internal set; }
        public string LastName { get; internal set; }
        public string FullName { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public DateTime? BirthDate { get; internal set; }
        public string Country { get; internal set; }
        public DateTime? EmailLinkDate { get; internal set; }
        public DateTime? JoinDate { get; internal set; }
        public DateTime? LastLoginDate { get; internal set; }
        public string UserProfile { get; set; }
        public string Title { get; set; }
        [DisplayName("Upload File")]
        public string ImagePath { get; set; }
        public DateTime? CreatedOn { get; set; }
        public byte[] UserPhoto { get; set; }
        public byte[] Image { get; set; }
        public byte[] PersonalPhoto { get; set; }
        public int LoginCount { get; set; }

       




        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser, int> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }
        // public virtual ICollection<Post> Post_UserIds { get; set; }
        //  public virtual ICollection<File> File_UserIds { get; set; }
        //  public virtual ICollection<FilePath> FilePath_UserIds { get; set; }
        public string UserId { get; set; }

    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser, MainProgram.Core.ApplicationDbContext.CustomRole,
     int, MainProgram.Core.ApplicationDbContext.CustomUserLogin, MainProgram.Core.ApplicationDbContext.CustomUserRole, MainProgram.Core.ApplicationDbContext.CustomUserClaim>
    {
        public ApplicationDbContext()
            : base("DefaultConnection")
        {
            Configuration.ProxyCreationEnabled = false;
        }

        //   public virtual DbSet<Thread> Threads { get; set; }
        //   public virtual DbSet<Post> Posts { get; set; }
        //  public DbSet<File> Files { get; set; }
        // public DbSet<FilePath> FilePaths { get; set; }

        // public DbSet<Comment> Comment { get; set; }
        //   public DbSet<Reply> Replies { get; set; }
        //  public DbSet<User> User { get; set; }



        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }


        public class CustomUserRole : IdentityUserRole<int> { }
        public class CustomUserClaim : IdentityUserClaim<int> { }
        public class CustomUserLogin : IdentityUserLogin<int> { }

        public class CustomRole : IdentityRole<int, CustomUserRole>
        {
            public CustomRole() { }
            public CustomRole(string name) { Name = name; }
        }

        public class CustomUserStore : UserStore<ApplicationUser, CustomRole, int,
            CustomUserLogin, CustomUserRole, CustomUserClaim>
        {
            public CustomUserStore(ApplicationDbContext context)
                : base(context)
            {
            }
        }

        public class CustomRoleStore : RoleStore<CustomRole, int, CustomUserRole>
        {
            public CustomRoleStore(ApplicationDbContext context)
                : base(context)
            {
            }
        }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            // modelBuilder.Entity<IdentityUser>().ToTable("tbh_User");
            // modelBuilder.Configurations.Add(new UserMap());
            // modelBuilder.Configurations.Add(new ReplyMap());
            // modelBuilder.Configurations.Add(new CommentMap());
            //  modelBuilder.Configurations.Add(new FilePathMap());
        }

        public string UserName { get; set; }

    }
}












