//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MainProgram.Edm
{
    using MainProgram.Core.Data;
    using System;
    using System.Collections.Generic;

    public partial class tbh_SubDepartments : IEntityBase
    {
        public tbh_SubDepartments()
        {
            this.Ajaxes = new HashSet<Ajax>();
            this.AjaxReplies = new HashSet<AjaxReply>();
            this.AngularReplies = new HashSet<AngularReply>();
            this.Angulars = new HashSet<Angular>();
            this.AspWebFormReplies = new HashSet<AspWebFormReply>();
            this.AspWebforms = new HashSet<AspWebform>();
            this.AzureReplies = new HashSet<AzureReply>();
            this.Azures = new HashSet<Azure>();
            this.C = new HashSet<C>();
            this.C__ = new HashSet<C__>();
            this.C__Replies = new HashSet<C__Replies>();
            this.CReplies = new HashSet<CReply>();
            this.CSharps = new HashSet<CSharp>();
            this.CSReplies = new HashSet<CSReply>();
            this.CSSes = new HashSet<CSS>();
            this.CSSReplies = new HashSet<CSSReply>();
            this.Databas = new HashSet<Databa>();
            this.DBAReplies = new HashSet<DBAReply>();
            this.DBAs = new HashSet<DBA>();
            this.DBReplies = new HashSet<DBReply>();
            this.DotNetReplies = new HashSet<DotNetReply>();
            this.DotNets = new HashSet<DotNet>();
            this.EntityFrameWorks = new HashSet<EntityFrameWork>();
            this.EntityFReplies = new HashSet<EntityFReply>();
            this.JavaReplies = new HashSet<JavaReply>();
            this.Javas = new HashSet<Java>();
            this.JqJavaReplies = new HashSet<JqJavaReply>();
            this.JqJavas = new HashSet<JqJava>();
            this.MVCReplies = new HashSet<MVCReply>();
            this.MVCs = new HashSet<MVC>();
            this.NetCoreReplies = new HashSet<NetCoreReply>();
            this.NetCores = new HashSet<NetCore>();
            this.NoSqlReplies = new HashSet<NoSqlReply>();
            this.NoSqls = new HashSet<NoSql>();
            this.NoteListReplies = new HashSet<NoteListReply>();
            this.NoteLists = new HashSet<NoteList>();
            this.NotesPageReplies = new HashSet<NotesPageReply>();
            this.NotesPages = new HashSet<NotesPage>();
            this.Post_CSharp = new HashSet<Post_CSharp>();
            this.Post_CSReplies = new HashSet<Post_CSReplies>();
            this.Post_CSS = new HashSet<Post_CSS>();
            this.Post_CSSReplies = new HashSet<Post_CSSReplies>();
            this.Post_Databases = new HashSet<Post_Databases>();
            this.Post_DBA = new HashSet<Post_DBA>();
            this.Post_DBAReplies = new HashSet<Post_DBAReplies>();
            this.Post_DBReplies = new HashSet<Post_DBReplies>();
            this.Post_EntityFrameWorks = new HashSet<Post_EntityFrameWorks>();
            this.Post_EntityFReplies = new HashSet<Post_EntityFReplies>();
            this.Post_JqJava = new HashSet<Post_JqJava>();
            this.Post_JqJavaReplies = new HashSet<Post_JqJavaReplies>();
            this.Post_Mvc = new HashSet<Post_Mvc>();
            this.Post_MvcReplies = new HashSet<Post_MvcReplies>();
            this.Post_QReplies = new HashSet<Post_QReplies>();
            this.Post_Question = new HashSet<Post_Question>();
            this.Post_Webform = new HashSet<Post_Webform>();
            this.Post_WebformReplies = new HashSet<Post_WebformReplies>();
            this.Posts = new HashSet<Post>();
            this.ReactReplies = new HashSet<ReactReply>();
            this.Reacts = new HashSet<React>();
            this.tbh_DSReplies = new HashSet<tbh_DSReplies>();
            this.tbh_FrontSlider = new HashSet<tbh_FrontSlider>();
            this.tbh_Pages = new HashSet<tbh_Pages>();
            this.tbh_Products = new HashSet<tbh_Products>();
            this.tbh_Replies = new HashSet<tbh_Replies>();
            this.tbh_SubDepartments1 = new HashSet<tbh_SubDepartments>();
            this.tbl_Order = new HashSet<tbl_Order>();
            this.tblVideos = new HashSet<tblVideo>();
            this.Threads = new HashSet<Thread>();
            this.WCFReplies = new HashSet<WCFReply>();
            this.WCFs = new HashSet<WCF>();
            this.WebApiReplies = new HashSet<WebApiReply>();
            this.WebApis = new HashSet<WebApi>();
            this.WPFReplies = new HashSet<WPFReply>();
            this.WPFs = new HashSet<WPF>();
        }
    
        public int Id { get; set; }
        public int SubDepartmentID { get; set; }
        public int DepartmentID { get; set; }
        public Nullable<int> ParentId { get; set; }
        public string MenuURL { get; set; }
        public string MenuIcon { get; set; }
        public Nullable<int> SortOrder { get; set; }
        public string Title { get; set; }
        public string Name { get; set; }
        public string SubDeptPic { get; set; }
        public string Description { get; set; }
        public string Picture1 { get; set; }
        public string Picture2 { get; set; }
        public Nullable<bool> isActive { get; set; }
        public Nullable<int> MenuMasterID { get; set; }
        public Nullable<int> tbh_SubDepartments_SubDepartmentID { get; set; }
        public Nullable<int> tbh_Departments_Id { get; set; }
        public Nullable<int> tbh_MenuMaster_Id { get; set; }
        public Nullable<int> tbh_SubDepartments2_Id { get; set; }
    
        public virtual ICollection<Ajax> Ajaxes { get; set; }
        public virtual ICollection<AjaxReply> AjaxReplies { get; set; }
        public virtual ICollection<AngularReply> AngularReplies { get; set; }
        public virtual ICollection<Angular> Angulars { get; set; }
        public virtual ICollection<AspWebFormReply> AspWebFormReplies { get; set; }
        public virtual ICollection<AspWebform> AspWebforms { get; set; }
        public virtual ICollection<AzureReply> AzureReplies { get; set; }
        public virtual ICollection<Azure> Azures { get; set; }
        public virtual ICollection<C> C { get; set; }
        public virtual ICollection<C__> C__ { get; set; }
        public virtual ICollection<C__Replies> C__Replies { get; set; }
        public virtual ICollection<CReply> CReplies { get; set; }
        public virtual ICollection<CSharp> CSharps { get; set; }
        public virtual ICollection<CSReply> CSReplies { get; set; }
        public virtual ICollection<CSS> CSSes { get; set; }
        public virtual ICollection<CSSReply> CSSReplies { get; set; }
        public virtual ICollection<Databa> Databas { get; set; }
        public virtual ICollection<DBAReply> DBAReplies { get; set; }
        public virtual ICollection<DBA> DBAs { get; set; }
        public virtual ICollection<DBReply> DBReplies { get; set; }
        public virtual ICollection<DotNetReply> DotNetReplies { get; set; }
        public virtual ICollection<DotNet> DotNets { get; set; }
        public virtual ICollection<EntityFrameWork> EntityFrameWorks { get; set; }
        public virtual ICollection<EntityFReply> EntityFReplies { get; set; }
        public virtual ICollection<JavaReply> JavaReplies { get; set; }
        public virtual ICollection<Java> Javas { get; set; }
        public virtual ICollection<JqJavaReply> JqJavaReplies { get; set; }
        public virtual ICollection<JqJava> JqJavas { get; set; }
        public virtual ICollection<MVCReply> MVCReplies { get; set; }
        public virtual ICollection<MVC> MVCs { get; set; }
        public virtual ICollection<NetCoreReply> NetCoreReplies { get; set; }
        public virtual ICollection<NetCore> NetCores { get; set; }
        public virtual ICollection<NoSqlReply> NoSqlReplies { get; set; }
        public virtual ICollection<NoSql> NoSqls { get; set; }
        public virtual ICollection<NoteListReply> NoteListReplies { get; set; }
        public virtual ICollection<NoteList> NoteLists { get; set; }
        public virtual ICollection<NotesPageReply> NotesPageReplies { get; set; }
        public virtual ICollection<NotesPage> NotesPages { get; set; }
        public virtual ICollection<Post_CSharp> Post_CSharp { get; set; }
        public virtual ICollection<Post_CSReplies> Post_CSReplies { get; set; }
        public virtual ICollection<Post_CSS> Post_CSS { get; set; }
        public virtual ICollection<Post_CSSReplies> Post_CSSReplies { get; set; }
        public virtual ICollection<Post_Databases> Post_Databases { get; set; }
        public virtual ICollection<Post_DBA> Post_DBA { get; set; }
        public virtual ICollection<Post_DBAReplies> Post_DBAReplies { get; set; }
        public virtual ICollection<Post_DBReplies> Post_DBReplies { get; set; }
        public virtual ICollection<Post_EntityFrameWorks> Post_EntityFrameWorks { get; set; }
        public virtual ICollection<Post_EntityFReplies> Post_EntityFReplies { get; set; }
        public virtual ICollection<Post_JqJava> Post_JqJava { get; set; }
        public virtual ICollection<Post_JqJavaReplies> Post_JqJavaReplies { get; set; }
        public virtual ICollection<Post_Mvc> Post_Mvc { get; set; }
        public virtual ICollection<Post_MvcReplies> Post_MvcReplies { get; set; }
        public virtual ICollection<Post_QReplies> Post_QReplies { get; set; }
        public virtual ICollection<Post_Question> Post_Question { get; set; }
        public virtual ICollection<Post_Webform> Post_Webform { get; set; }
        public virtual ICollection<Post_WebformReplies> Post_WebformReplies { get; set; }
        public virtual ICollection<Post> Posts { get; set; }
        public virtual ICollection<ReactReply> ReactReplies { get; set; }
        public virtual ICollection<React> Reacts { get; set; }
        public virtual tbh_Departments tbh_Departments { get; set; }
        public virtual ICollection<tbh_DSReplies> tbh_DSReplies { get; set; }
        public virtual ICollection<tbh_FrontSlider> tbh_FrontSlider { get; set; }
        public virtual tbh_MenuMaster tbh_MenuMaster { get; set; }
        public virtual ICollection<tbh_Pages> tbh_Pages { get; set; }
        public virtual ICollection<tbh_Products> tbh_Products { get; set; }
        public virtual ICollection<tbh_Replies> tbh_Replies { get; set; }
        public virtual ICollection<tbh_SubDepartments> tbh_SubDepartments1 { get; set; }
        public virtual tbh_SubDepartments tbh_SubDepartments2 { get; set; }
        public virtual ICollection<tbl_Order> tbl_Order { get; set; }
        public virtual ICollection<tblVideo> tblVideos { get; set; }
        public virtual ICollection<Thread> Threads { get; set; }
        public virtual ICollection<WCFReply> WCFReplies { get; set; }
        public virtual ICollection<WCF> WCFs { get; set; }
        public virtual ICollection<WebApiReply> WebApiReplies { get; set; }
        public virtual ICollection<WebApi> WebApis { get; set; }
        public virtual ICollection<WPFReply> WPFReplies { get; set; }
        public virtual ICollection<WPF> WPFs { get; set; }
    }
}
