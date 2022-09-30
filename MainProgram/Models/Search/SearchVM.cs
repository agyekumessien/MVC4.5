using MainProgram.Edm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.Models.Search
{
    public class SearchVM
    {
        public List<Post> postCSharp { get; set; }
        public List<Thread> postThread { get; set; }
        public virtual ICollection<Thread> Thread1 { get; set; }
        public Nullable<int> Thread_ThreadId { get; set; }
        public List<DotNetSearchModel> postDotNet { get; set; }
        public List<SqlServerSearchModel> postDatabase { get; set; }

    }

//1
    public class CSharpSearchModel
    {
        

        public int CSId { get; set; }
        public int? Id { get; set; }
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
        public int? UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }

        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CSharp> CSharp1 { get; set; }
        public virtual CSharp CSharp2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CSReply> CSReplies { get; set; }
    }

//2
    public class DotNetSearchModel
    {

        public int DotNetId { get; set; }
        public int? Id { get; set; }
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
        public int? UserId { get; set; }

        public Nullable<System.DateTime> CreatedOn { get; set; }

        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DotNetSearchModel> DotNet1 { get; set; }
        public virtual DotNetSearchModel DotNet2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DotNetReply> DotNetReplies { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    }

//3
     public class SqlServerSearchModel
    {
     
    
        public int DbId { get; set; }
        public int? Id { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string DatabasesText { get; set; }
        public string DatabasesTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> Databases_DbId { get; set; }
        public string DatabasesSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int? UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SqlServerSearchModel> Databases1 { get; set; }
        public virtual SqlServerSearchModel Databas1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DBReply> DBReplies { get; set; }
    }

//4
     public  class CSSSearchModel
     {
        

         public int CSSId { get; set; }
         public int? Id { get; set; }
         public Nullable<int> DepartmentID { get; set; }
         public Nullable<int> SubDepartmentID { get; set; }
         public Nullable<int> LanguageId { get; set; }
         public string LastName { get; set; }
         public string FirstName { get; set; }
         public Nullable<System.DateTime> PostDate { get; set; }
         public string CSSText { get; set; }
         public string CSSTitle { get; set; }
         public string MenuURL { get; set; }
         public string FullImageUrl { get; set; }
         public bool IsActive { get; set; }
         public string GetUserName { get; set; }
         public string UserProfile_Id { get; set; }
         public string MemberProfile { get; set; }
         public Nullable<int> CSS_CSSId { get; set; }
         public string CSSSKu { get; set; }
         public string Title { get; set; }
         public string ImagePath { get; set; }
         public string LanguageName { get; set; }
         public int? UserId { get; set; }
         public Nullable<System.DateTime> CreatedOn { get; set; }

         public virtual AspNetUser AspNetUser { get; set; }
         public virtual tbh_Departments tbh_Departments { get; set; }
         public virtual tbh_Language tbh_Language { get; set; }
         public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
         [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
         public virtual ICollection<CSSSearchModel> CSS1 { get; set; }
         public virtual CSSSearchModel CSS2 { get; set; }
         [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
         public virtual ICollection<CSSReply> CSSReplies { get; set; }
     }

public class EntityFSearchModel
    {
      
        public int EntityFId { get; set; }
        public int? Id { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string EntityFText { get; set; }
        public string EntityFTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> EntityFrameWork_EntityFId { get; set; }
        public string EntityFrameWorkSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int? UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EntityFSearchModel> EntityFrameWork1 { get; set; }
        public virtual EntityFSearchModel EntityFrameWork2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EntityFReply> EntityFReplies { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    }

      public class JqJavaSearchModel
    {
       
    
        public int JqJavaId { get; set; }
           public int? Id { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string JqJavaText { get; set; }
        public string JqJavaTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> JqJava_JqJavaId { get; set; }
        public string JqJavaSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int? UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<JqJavaSearchModel> JqJava1 { get; set; }
        public virtual JqJavaSearchModel JqJava2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<JqJavaReply> JqJavaReplies { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    }


     public  class AspWebformSearchModel
    {
       
        public int AspWfId { get; set; }
          public int? Id { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string AspWfText { get; set; }
        public string AspWfTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> AspWebform_AspWfId { get; set; }
        public string AspWfSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int? UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AspWebformSearchModel> AspWebform1 { get; set; }
        public virtual AspWebformSearchModel AspWebform2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AspWebFormReply> AspWebFormReplies { get; set; }
    }

 public  class DBASearhModel
    {
       
    
        public int DBAId { get; set; }
        public int? Id { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string DBAText { get; set; }
        public string DBATitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> DBA_DBAId { get; set; }
        public string DBASKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int? UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DBASearhModel> DBA1 { get; set; }
        public virtual DBASearhModel DBA2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DBAReply> DBAReplies { get; set; }
    }

       public  class MVCSearchModel
    {
       
    
        public int MVCId { get; set; }
        public int? Id { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public Nullable<int> SubDepartmentID { get; set; }
        public Nullable<int> LanguageId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public string MVCText { get; set; }
        public string MVCTitle { get; set; }
        public string MenuURL { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
        public string GetUserName { get; set; }
        public string UserProfile_Id { get; set; }
        public string MemberProfile { get; set; }
        public Nullable<int> MVC_MVCId { get; set; }
        public string MVCSKu { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public string LanguageName { get; set; }
        public int? UserId { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MVCSearchModel> MVC1 { get; set; }
        public virtual MVCSearchModel MVC2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MVCReply> MVCReplies { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual tbh_Language tbh_Language { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments { get; set; }
    }
}







    
    
