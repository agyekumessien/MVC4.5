using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.WebPages.Html;
using Microsoft.AspNet.Identity;
using MainProgram.Edm;
using MainProgram.Core;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Web.Mvc;



namespace MainProgram.Models
{



       public class UserProfileModel
    {
        [Display(Name = "Full Name:")]
        [Required(ErrorMessage = "Full Name is required.")]
        public string FullName { get; set; }

        [Display(Name = "Email:")]
        [Required(ErrorMessage = "Email is required.")]
        public string Email { get; set; }

        [Display(Name = "Address:")]
        public string Address { get; set; }

        [StringLength(20, ErrorMessage = "{21} characters too long.")]
        [Display(Name = "UserPhoto")]
        public byte[] UserPhoto { get; set; } 
    }
}


    //For PostController
    public class ThreadVM
    {


        public int ThreadId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string ThreadText { get; set; }
        public string ThreadTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> Thread_ThreadId { get; set; }
        public string ThreadSKu { get; set; }
        public string Title { get; set; }
        [DisplayName("Upload File")]
        public string ImagePath { get; set; }
        public HttpPostedFileBase ImageFile { get; set; }
        public string LanguageName { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PostTag> PostTags { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
       // public virtual ICollection<tbh_Images> tbh_Images { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_PostLike> tbh_PostLike { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_PostLike> tbh_PostLike1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_ReadPost> tbh_ReadPost { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_Replies> tbh_Replies { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Thread> Thread1 { get; set; }
        public virtual Thread Thread2 { get; set; }







    }



    //for ThreadController
    public class PostVM
    {

        public int PostId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string RoleId { get; set; }
        public string PostTitle { get; set; }
        public string PostText { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public int UserId { get; set; }
        public string UserProfile_Id { get; set; }
        public Nullable<int> Post_PostId { get; set; }
        public string PostSku { get; set; }
        public string Title { get; set; }
        [DisplayName("Upload File")]
        public string ImagePath { get; set; }
        public HttpPostedFileBase ImageFile { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LanguageName { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post> Post1 { get; set; }
        public virtual Post Post2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_PostLike> tbh_PostLike { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_DSReplies> tbh_DSReplies { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    }


    public class tbh_RepliesVM
    {

        public int ReplyId { get; set; }
        public string ReplyText { get; set; }
        public string ReplyTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int ThreadId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string ReplytSku { get; set; }
        public string Title { get; set; }
        [DisplayName("Upload File")]
        public string ImagePath { get; set; }
        public HttpPostedFileBase ImageFile { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> tbh_Replies_ReplyId { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_ReadPost> tbh_ReadPost { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_Replies> tbh_Replies1 { get; set; }
        public virtual tbh_Replies tbh_Replies2 { get; set; }
        public virtual Thread Thread { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_ReplyLike> tbh_ReplyLike { get; set; }
        

      

        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID { get; set; }


    }


    public class tbh_DSRepliesVM
    {
        public int DSReplyId { get; set; }
        public string DSReplyText { get; set; }
        public string DSReplyTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int PostId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string ReplytSku { get; set; }
        public string Title { get; set; }
        [DisplayName("Upload File")]
        public string ImagePath { get; set; }
        public HttpPostedFileBase ImageFile { get; set; }
        public string LanguageName { get; set; }
        public Nullable<int> tbh_DSReplies_DSReplyId { get; set; }

        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Post Post { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_DSReplies> tbh_DSReplies1 { get; set; }
        public virtual tbh_DSReplies tbh_DSReplies2 { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }

        public string DSReply { get; set; }
        // public int reply { get; set; }

        public int DSTID { get; set; }


        public string Reply { get; set; }

        public int TID { get; set; }
    }




    public  class ReadPostVM
    {
        public int RPId { get; set; }
        public Nullable<int> ThreadId { get; set; }
        public Nullable<int> ReplyId { get; set; }
        public string ThreadText { get; set; }
        public string ThreadTitle { get; set; }
        public string ReplyText { get; set; }
        public string ReplyTitle { get; set; }
        public string Title { get; set; }
        [DisplayName("Upload File")]
        public string ImagePath { get; set; }
        public HttpPostedFileBase ImageFile { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }

        public virtual tbh_Replies tbh_Replies { get; set; }
        public virtual Thread Thread { get; set; }

        public int TID { get; set; }
    }


    public class UserVM
    {
        public string ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public string Email { get; set; }
       
        public string UserName { get; set; }
    }


















    public class ApplicationUserVM
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string UserProfile { get; set; }
        public string Title { get; set; }
        [DisplayName("Upload File")]
        public string ImagePath { get; set; }
        public HttpPostedFileBase ImageFile { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public string UserId { get; set; }
        public string Email { get; set; }
        public bool EmailConfirmed { get; set; }
        public string PasswordHash { get; set; }
        public string SecurityStamp { get; set; }
        public string PhoneNumber { get; set; }
        public bool PhoneNumberConfirmed { get; set; }
        public bool TwoFactorEnabled { get; set; }
        public Nullable<System.DateTime> LockoutEndDateUtc { get; set; }
        public bool LockoutEnabled { get; set; }
        public int AccessFailedCount { get; set; }
        public string UserName { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AspNetUserClaim> AspNetUserClaims { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AspNetUserLogin> AspNetUserLogins { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbh_Replies> tbh_Replies { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Thread> Threads { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AspNetRole> AspNetRoles { get; set; }
    }



   

    public  class Post_CSRepliesVM
    {
        public int PostCSRId { get; set; }
        public string PostCSRText { get; set; }
        public string PostCSRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int PostCSId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string PostCSRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> Post_CSReplies_PostCSRId { get; set; }

        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Post_CSharp Post_CSharp { get; set; }
        public virtual ICollection<Post_CSRepliesVM> Post_CSReplies1 { get; set; }
        public virtual Post_CSRepliesVM Post_CSReplies2 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }

      

        public int TID { get; set; }

        public string Reply { get; set; }
    }





 public class Post_QRepliesVM
    {
       
    
        public int PostQRId { get; set; }
        public string PostQRText { get; set; }
        public string PostQRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int PostQId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string PostQRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> Post_QReplies_PostQRId { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post_QReplies> Post_QReplies1 { get; set; }
        public virtual Post_QReplies Post_QReplies2 { get; set; }
        public virtual Post_Question Post_Question { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }


       public int TID { get; set; }

        public string Reply { get; set; }
    }








    public  class Post_MvcRepliesVM
    {
       

        public int PostMvcRId { get; set; }
        public string PostMvcRText { get; set; }
        public string PostMvcRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int PostMvcId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string PostMvcRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> Post_MvcReplies_PostMvcRId { get; set; }

        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Post_Mvc Post_Mvc { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post_MvcReplies> Post_MvcReplies1 { get; set; }
        public virtual Post_MvcReplies Post_MvcReplies2 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }


            public int TID { get; set; }

        public string Reply { get; set; }
    

    }






    public class Post_DBRepliesVM
    {


        public int PostDBRId { get; set; }
        public string PostDBRText { get; set; }
        public string PostDBRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int PostDbId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string PostDBRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> Post_DBReplies_PostDBRId { get; set; }

        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Post_Databases Post_Databases { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post_DBRepliesVM> Post_DBReplies1 { get; set; }
        public virtual Post_DBRepliesVM Post_DBReplies2 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }


        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }

    }

 public partial class Post_CSSRepliesVM
    {
      
    
        public int PostCSSRId { get; set; }
        public string PostCSSRText { get; set; }
        public string PostCSSRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int PostCSSId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string PostCSSRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> Post_CSSReplies_PostCSSRId { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Post_CSS Post_CSS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post_CSSRepliesVM> Post_CSSReplies1 { get; set; }
        public virtual Post_CSSRepliesVM Post_CSSReplies2 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
    

 public string Reply { get; set; }
 // public int reply { get; set; }

 public int TID
 {
     get;
     set;
 }
}

 public class Post_EntityFRepliesVM
 {
     public int PostEntityFRepId { get; set; }
     public string PostEntityFRepText { get; set; }
     public string PostEntityFRepTitle { get; set; }
     public Nullable<System.DateTime> CreatedOn { get; set; }
     public int UserId { get; set; }
     public int PostEfId { get; set; }
     public Nullable<int> LanguageId { get; set; }
     public Nullable<int> DepartmentID { get; set; }
     public Nullable<int> SubDepartmentID { get; set; }
     public bool IsActive { get; set; }
     public string PostEntityFRepSku { get; set; }
     public string Title { get; set; }
     public string ImagePath { get; set; }
     public string LanguageName { get; set; }
     public string UserName { get; set; }
     public Nullable<int> Post_EntityFReplies_PostEntityFRepId { get; set; }

     public virtual AspNetUser AspNetUser { get; set; }
     public virtual Post_EntityFrameWorks Post_EntityFrameWorks { get; set; }
     [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
     public virtual ICollection<Post_EntityFRepliesVM> Post_EntityFReplies1 { get; set; }
     public virtual Post_EntityFRepliesVM Post_EntityFReplies2 { get; set; }
     public virtual tbh_Departments tbh_Departments { get; set; }
     public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
     public virtual tbh_Language tbh_Language { get; set; }

     public string Reply { get; set; }
     // public int reply { get; set; }

     public int TID
     {
         get;
         set;
     }

 }

 public class Post_JqJavaRepliesVM
    {
        public int PostJqJavaRepId { get; set; }
        public string PostJqJavaRepText { get; set; }
        public string PostJqJavaRepTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int PostJqJavaId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string PostJqJavaRepSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> Post_JqJavaReplies_PostJqJavaRepId { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Post_JqJava Post_JqJava { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post_JqJavaRepliesVM> Post_JqJavaReplies1 { get; set; }
        public virtual Post_JqJavaRepliesVM Post_JqJavaReplies2 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
    


     public string Reply { get; set; }
     // public int reply { get; set; }

     public int TID
     {
         get;
         set;
     }

 }

     public  class DotNetVM
     {
         public int DotNetId { get; set; }
         public Nullable<int> DepartmentID { get; set; }
         public Nullable<int> SubDepartmentID { get; set; }
         public Nullable<int> LanguageId { get; set; }
         public string LastName { get; set; }
         public string FirstName { get; set; }
         public Nullable<System.DateTime> PostDate { get; set; }
         public string DotNetText { get; set; }
         public string DotNetTitle { get; set; }
         public string MenuURL { get; set; }
         public string FullImageUrl { get; set; }
         public bool IsActive { get; set; }
         public string GetUserName { get; set; }
         public string UserProfile_Id { get; set; }
         public string MemberProfile { get; set; }
         public Nullable<int> DotNet_DotNetId { get; set; }
         public string DotNetSKu { get; set; }
         public string Title { get; set; }
         public string ImagePath { get; set; }
         public string LanguageName { get; set; }
         public int UserId { get; set; }
         public Nullable<System.DateTime> CreatedOn { get; set; }

         public virtual AspNetUser AspNetUser { get; set; }
         [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
         public virtual ICollection<DotNetVM> DotNet1 { get; set; }
         public virtual DotNetVM DotNet2 { get; set; }
         [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
         public virtual ICollection<DotNetReply> DotNetReplies { get; set; }
         public virtual tbh_Departments tbh_Departments { get; set; }
         public virtual tbh_Language tbh_Language { get; set; }
         public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }

         public string Reply { get; set; }
         // public int reply { get; set; }

         public int TID
         {
             get;
             set;
         }

     }

 
 public  class Post_DBARepliesVM
    {
       
    
        public int PostDBARId { get; set; }
        public string PostDBARText { get; set; }
        public string PostDBARTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int PostDBAId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string PostDBARSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> Post_DBAReplies_PostDBARId { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Post_DBA Post_DBA { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Post_DBARepliesVM> Post_DBAReplies1 { get; set; }
        public virtual Post_DBARepliesVM Post_DBAReplies2 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }


        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }
 }
        public class Post_WebformRepliesVM
        {
            public int PostWformRId { get; set; }
            public string PostWformRText { get; set; }
            public string PostWformRTitle { get; set; }
            public Nullable<System.DateTime> CreatedOn { get; set; }
            public int UserId { get; set; }
            public int PostWformId { get; set; }
            public Nullable<int> LanguageId { get; set; }
            public Nullable<int> DepartmentID { get; set; }
            public Nullable<int> SubDepartmentID { get; set; }
            public bool IsActive { get; set; }
            public string PostWformRSku { get; set; }
            public string Title { get; set; }
            public string ImagePath { get; set; }
            public string LanguageName { get; set; }
            public string UserName { get; set; }
            public Nullable<int> Post_WebformReplies_PostWformRId { get; set; }

            public virtual AspNetUser AspNetUser { get; set; }
            public virtual Post_Webform Post_Webform { get; set; }
            [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
            public virtual ICollection<Post_WebformReplies> Post_WebformReplies1 { get; set; }
            public virtual Post_WebformReplies Post_WebformReplies2 { get; set; }
            public virtual tbh_Departments tbh_Departments { get; set; }
            public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
            public virtual tbh_Language tbh_Language { get; set; }
        
public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }
}

 

  public  class AngularVM
    {
        
    
        public int AngularId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string AngularText { get; set; }
        public string AngularTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> Angular_AngularId { get; set; }
        public string AngularSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AngularVM> Angular1 { get; set; }
        public virtual AngularVM Angular2 { get; set; }
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AngularReply> AngularReplies { get; set; }
        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }

    }








public class AngularReplyVM
{

    public int AngularRId { get; set; }
    public string AngularRText { get; set; }
    public string AngularRTitle { get; set; }
    public Nullable<System.DateTime> CreatedOn { get; set; }
    public int UserId { get; set; }
    public int AngularId { get; set; }
    public Nullable<int> LanguageId { get; set; }
    public Nullable<int> DepartmentID { get; set; }
    public Nullable<int> SubDepartmentID { get; set; }
    public bool IsActive { get; set; }
    public string AngularRSku { get; set; }
    public string Title { get; set; }
    public string ImagePath { get; set; }
    public string LanguageName { get; set; }
    public string UserName { get; set; }
    public Nullable<int> AngularReplies_AngularRId { get; set; }

    public virtual AngularVM Angular { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<AngularReplyVM> AngularReplies1 { get; set; }
    public virtual AngularReplyVM AngularReply1 { get; set; }
    public virtual AspNetUser AspNetUser { get; set; }
    public virtual tbh_Departments tbh_Departments { get; set; }
    public virtual tbh_Language tbh_Language { get; set; }
    public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    public string Reply { get; set; }
    // public int reply { get; set; }

    public int TID
    {
        get;
        set;
    }
}

 





 public class NoSqlReplyVM
    {


        public int NoSqlRId { get; set; }
        public string NoSqlRText { get; set; }
        public string NoSqlRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int NoSqlId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string NoSqlRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> NoSqlReplies_NoSqlRId { get; set; }

        public virtual AspNetUser AspNetUser { get; set; }
        public virtual NoSql NoSql { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NoSqlReply> NoSqlReplies1 { get; set; }
        public virtual NoSqlReply NoSqlReply1 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }
    
}



 public  class ReactVM
    {
     [HiddenInput(DisplayValue = false)]
     [Key]
        public int ReactId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string ReactText { get; set; }
        public string ReactTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> React_ReactId { get; set; }
        public string ReactSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReactVM> React1 { get; set; }
        public virtual ReactVM React2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReactReplyVM> ReactReplies { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    
 public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }
}

public  class ReactReplyVM
    {

   
        public int ReactRId { get; set; }
        public string ReactRText { get; set; }
        public string ReactRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int ReactId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string ReactRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> ReactReplies_ReactRId { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual React React { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReactReplyVM> ReactReplies1 { get; set; }
        public virtual ReactReplyVM ReactReply1 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }
}

 public  class WebApiVM
    {
       
    
        public int WebApiId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string WebApiText { get; set; }
        public string WebApiTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> WebApi_WebApiId { get; set; }
        public string WebApiSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WebApiVM> WebApi1 { get; set; }
        public virtual WebApiVM WebApi2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WebApiReplyVM> WebApiReplies { get; set; }
    
 public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }
}


 public  class WebApiReplyVM
    {
        
        public int WebApiRId { get; set; }
        public string WebApiRText { get; set; }
        public string WebApiRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int WebApiId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string WebApiRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> WebApiReplies_WebApiRId { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual WebApiVM WebApi { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WebApiReplyVM> WebApiReplies1 { get; set; }
        public virtual WebApiReplyVM WebApiReply1 { get; set; }
        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }


}
 public  class NetCoreVM
    {
        
    
        public int NetCoreId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string NetCoreText { get; set; }
        public string NetCoreTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> NetCore_NetCoreId { get; set; }
        public string NetCoreSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual ICollection<NetCoreVM> NetCore1 { get; set; }
        public virtual NetCoreVM NetCore2 { get; set; }
        public virtual ICollection<NetCoreReplyVM> NetCoreReplies { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }
 }
 public class NetCoreReplyVM
 {
    

     public int NetCoreRId { get; set; }
     public string NetCoreRText { get; set; }
     public string NetCoreRTitle { get; set; }
     public Nullable<System.DateTime> CreatedOn { get; set; }
     public int UserId { get; set; }
     public int NetCoreId { get; set; }
     public Nullable<int> LanguageId { get; set; }
     public Nullable<int> DepartmentID { get; set; }
     public Nullable<int> SubDepartmentID { get; set; }
     public bool IsActive { get; set; }
     public string NetCoreRSku { get; set; }
     public string Title { get; set; }
     public string ImagePath { get; set; }
     public string LanguageName { get; set; }
     public string UserName { get; set; }
     public Nullable<int> NetCoreReplies_NetCoreRId { get; set; }

     public virtual AspNetUser AspNetUser { get; set; }
     public virtual NetCore NetCore { get; set; }
     public virtual ICollection<NetCoreReplyVM> NetCoreReplies1 { get; set; }
     public virtual NetCoreReplyVM NetCoreReply1 { get; set; }
     public virtual tbh_Departments tbh_Departments { get; set; }
     public virtual tbh_Language tbh_Language { get; set; }
     public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
     public string Reply { get; set; }
     // public int reply { get; set; }

     public int TID
     {
         get;
         set;
     }

 }



 public class JavaVM
 {

     public int JavaId { get; set; }
     public Nullable<int> DepartmentID { get; set; }
     public Nullable<int> SubDepartmentID { get; set; }
     public Nullable<int> LanguageId { get; set; }
     public string LastName { get; set; }
     public string FirstName { get; set; }
     public Nullable<System.DateTime> PostDate { get; set; }
     public string JavaText { get; set; }
     public string JavaTitle { get; set; }
     public string MenuURL { get; set; }
     public string FullImageUrl { get; set; }
     public bool IsActive { get; set; }
     public string GetUserName { get; set; }
     public string UserProfile_Id { get; set; }
     public string MemberProfile { get; set; }
     public Nullable<int> Java_JavaId { get; set; }
     public string JavaSKu { get; set; }
     public string Title { get; set; }
     public string ImagePath { get; set; }
     public string LanguageName { get; set; }
     public int UserId { get; set; }
     public Nullable<System.DateTime> CreatedOn { get; set; }

     public virtual AspNetUser AspNetUser { get; set; }
     [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
     public virtual ICollection<JavaVM> Java1 { get; set; }
     public virtual JavaVM Java2 { get; set; }
     [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
     public virtual ICollection<JavaReply> JavaReplies { get; set; }
     public virtual tbh_Departments tbh_Departments { get; set; }
     public virtual tbh_Language tbh_Language { get; set; }
     public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
     public string Reply { get; set; }
     // public int reply { get; set; }

     public int TID
     {
         get;
         set;
     }

 }


    public class JavaReplyVM
    {

        public int JavaRId { get; set; }
        public string JavaRText { get; set; }
        public string JavaRTitle { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public int UserId { get; set; }
        public int JavaId { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public bool IsActive { get; set; }
        public string JavaRSku { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public string UserName { get; set; }
        public Nullable<int> JavaReplies_JavaRId { get; set; }

        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Java Java { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<JavaReply> JavaReplies1 { get; set; }
        public virtual JavaReply JavaReply1 { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }

    }








     public class CategoryViewModel
     {


         public int CategoryID { get; set; }

         public Nullable<int> ParentId { get; set; }
         public string MenuUrl { get; set; }


         public Nullable<int> SortOrder { get; set; }
         public Nullable<System.DateTime> DateAdded { get; set; }
         public Nullable<bool> IsActive { get; set; }
         public Nullable<bool> Status { get; set; }
         public string Ancestor { get; set; }

         public string MenuIcon { get; set; }
         [DisplayName("Upload File")]
         public HttpPostedFileBase Name { get; set; }


         [StringLength(20, ErrorMessage = "{21} characters too long.")]
         [Display(Name = "CatImage")]
         public byte[] CatImage { get; set; }
     }

/*
 public  class CSharpVM
    {
       
    
        public int CSId { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string CSharpText { get; set; }
        public string CSharpTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> CSharp_CSId { get; set; }
        public string CSharpSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CSharpVM> CSharp1 { get; set; }
        public virtual CSharpVM CSharp2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CSReply> CSReplies { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Search> Searches { get; set; }

      public string Reply { get; set; }
     // public int reply { get; set; }

     public int TID
     {
         get;
         set;
     }
    }

*/


     public  class NoteListVM
     {
        

         public int NoteListId { get; set; }
         public Nullable<int> DepartmentID { get; set; }
         public Nullable<int> SubDepartmentID { get; set; }
         public Nullable<int> LanguageId { get; set; }
         public string LastName { get; set; }
         public string FirstName { get; set; }
         public Nullable<System.DateTime> PostDate { get; set; }
         public string NoteListText { get; set; }
         public string NoteListTitle { get; set; }
         public string MenuURL { get; set; }
         public string FullImageUrl { get; set; }
         public bool IsActive { get; set; }
         public string GetUserName { get; set; }
         public string UserProfile_Id { get; set; }
         public string MemberProfile { get; set; }
         public Nullable<int> NoteList_NoteListId { get; set; }
         public string NoteListSKu { get; set; }
         public string Title { get; set; }
         public string ImagePath { get; set; }
         public string LanguageName { get; set; }
         public int UserId { get; set; }
         public Nullable<System.DateTime> CreatedOn { get; set; }

         public virtual AspNetUser AspNetUser { get; set; }
         [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
         public virtual ICollection<NoteListVM> NoteList1 { get; set; }
         public virtual NoteListVM NoteList2 { get; set; }
         [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
         public virtual ICollection<NoteListReply> NoteListReplies { get; set; }
         public virtual tbh_Departments tbh_Departments { get; set; }
         public virtual tbh_Language tbh_Language { get; set; }
         public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    

  public string Reply { get; set; }
     // public int reply { get; set; }

     public int TID
     {
         get;
         set;
     }



     public class NoteListReplyVM
     {
        
         public int NoteListRId { get; set; }
         public string NoteListRText { get; set; }
         public string NotesPageRTitle { get; set; }
         public Nullable<System.DateTime> CreatedOn { get; set; }
         public int UserId { get; set; }
         public int NoteListId { get; set; }
         public Nullable<int> LanguageId { get; set; }
         public Nullable<int> DepartmentID { get; set; }
         public Nullable<int> SubDepartmentID { get; set; }
         public bool IsActive { get; set; }
         public string NoteListRSku { get; set; }
         public string Title { get; set; }
         public string ImagePath { get; set; }
         public string LanguageName { get; set; }
         public string UserName { get; set; }
         public Nullable<int> NoteListReplies_NoteListRId { get; set; }

         public virtual AspNetUser AspNetUser { get; set; }
         public virtual NoteListVM NoteList { get; set; }
         [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
         public virtual ICollection<NoteListReplyVM> NoteListReplies1 { get; set; }
         public virtual NoteListReplyVM NoteListReply1 { get; set; }
         public virtual tbh_Departments tbh_Departments { get; set; }
         public virtual tbh_Language tbh_Language { get; set; }
         public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }

        public string Reply { get; set; }
        // public int reply { get; set; }

        public int TID
        {
            get;
            set;
        }



}


 }




