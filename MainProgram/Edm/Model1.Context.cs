﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MainProgram.Edm
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class angulardemoEntities : DbContext
    {
        public angulardemoEntities()
            : base("name=angulardemoEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<AddressDto> AddressDtoes { get; set; }
        public virtual DbSet<Ajax> Ajaxes { get; set; }
        public virtual DbSet<AjaxReply> AjaxReplies { get; set; }
        public virtual DbSet<AngularReply> AngularReplies { get; set; }
        public virtual DbSet<Angular> Angulars { get; set; }
        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<AspWebFormReply> AspWebFormReplies { get; set; }
        public virtual DbSet<AspWebform> AspWebforms { get; set; }
        public virtual DbSet<AzureReply> AzureReplies { get; set; }
        public virtual DbSet<Azure> Azures { get; set; }
        public virtual DbSet<C> C { get; set; }
        public virtual DbSet<C__> C__ { get; set; }
        public virtual DbSet<C__Replies> C__Replies { get; set; }
        public virtual DbSet<Cart> Carts { get; set; }
        public virtual DbSet<CreateMessage> CreateMessages { get; set; }
        public virtual DbSet<CReply> CReplies { get; set; }
        public virtual DbSet<CSharp> CSharps { get; set; }
        public virtual DbSet<CSReply> CSReplies { get; set; }
        public virtual DbSet<CSS> CSSes { get; set; }
        public virtual DbSet<CSSReply> CSSReplies { get; set; }
        public virtual DbSet<Databa> Databas { get; set; }
        public virtual DbSet<DBAReply> DBAReplies { get; set; }
        public virtual DbSet<DBA> DBAs { get; set; }
        public virtual DbSet<DBReply> DBReplies { get; set; }
        public virtual DbSet<DotNetReply> DotNetReplies { get; set; }
        public virtual DbSet<DotNet> DotNets { get; set; }
        public virtual DbSet<EntityFrameWork> EntityFrameWorks { get; set; }
        public virtual DbSet<EntityFReply> EntityFReplies { get; set; }
        public virtual DbSet<ErrorViewModel> ErrorViewModels { get; set; }
        public virtual DbSet<FilePath> FilePaths { get; set; }
        public virtual DbSet<File> Files { get; set; }
        public virtual DbSet<FileType> FileTypes { get; set; }
        public virtual DbSet<genMainSlider> genMainSliders { get; set; }
        public virtual DbSet<genPromoRight> genPromoRights { get; set; }
        public virtual DbSet<JavaReply> JavaReplies { get; set; }
        public virtual DbSet<Java> Javas { get; set; }
        public virtual DbSet<JqJavaReply> JqJavaReplies { get; set; }
        public virtual DbSet<JqJava> JqJavas { get; set; }
        public virtual DbSet<Manufacturer> Manufacturers { get; set; }
        public virtual DbSet<MembersDto> MembersDtoes { get; set; }
        public virtual DbSet<MemberUpdateDto> MemberUpdateDtoes { get; set; }
        public virtual DbSet<MVCReply> MVCReplies { get; set; }
        public virtual DbSet<MVC> MVCs { get; set; }
        public virtual DbSet<NetCoreReply> NetCoreReplies { get; set; }
        public virtual DbSet<NetCore> NetCores { get; set; }
        public virtual DbSet<NLReply> NLReplies { get; set; }
        public virtual DbSet<NoSqlReply> NoSqlReplies { get; set; }
        public virtual DbSet<NoSql> NoSqls { get; set; }
        public virtual DbSet<NoteListReply> NoteListReplies { get; set; }
        public virtual DbSet<NoteList> NoteLists { get; set; }
        public virtual DbSet<NotesPageReply> NotesPageReplies { get; set; }
        public virtual DbSet<NotesPage> NotesPages { get; set; }
        public virtual DbSet<PhotoDto> PhotoDtoes { get; set; }
        public virtual DbSet<PhotoForApprovalDto> PhotoForApprovalDtoes { get; set; }
        public virtual DbSet<Post_CSharp> Post_CSharp { get; set; }
        public virtual DbSet<Post_CSReplies> Post_CSReplies { get; set; }
        public virtual DbSet<Post_CSS> Post_CSS { get; set; }
        public virtual DbSet<Post_CSSReplies> Post_CSSReplies { get; set; }
        public virtual DbSet<Post_Databases> Post_Databases { get; set; }
        public virtual DbSet<Post_DBA> Post_DBA { get; set; }
        public virtual DbSet<Post_DBAReplies> Post_DBAReplies { get; set; }
        public virtual DbSet<Post_DBReplies> Post_DBReplies { get; set; }
        public virtual DbSet<Post_EntityFrameWorks> Post_EntityFrameWorks { get; set; }
        public virtual DbSet<Post_EntityFReplies> Post_EntityFReplies { get; set; }
        public virtual DbSet<Post_JqJava> Post_JqJava { get; set; }
        public virtual DbSet<Post_JqJavaReplies> Post_JqJavaReplies { get; set; }
        public virtual DbSet<Post_Mvc> Post_Mvc { get; set; }
        public virtual DbSet<Post_MvcReplies> Post_MvcReplies { get; set; }
        public virtual DbSet<Post_QReplies> Post_QReplies { get; set; }
        public virtual DbSet<Post_Question> Post_Question { get; set; }
        public virtual DbSet<Post_Webform> Post_Webform { get; set; }
        public virtual DbSet<Post_WebformReplies> Post_WebformReplies { get; set; }
        public virtual DbSet<Post> Posts { get; set; }
        public virtual DbSet<PostTag> PostTags { get; set; }
        public virtual DbSet<PostVideo> PostVideos { get; set; }
        public virtual DbSet<Producer> Producers { get; set; }
        public virtual DbSet<ProfileModel> ProfileModels { get; set; }
        public virtual DbSet<ReactReply> ReactReplies { get; set; }
        public virtual DbSet<React> Reacts { get; set; }
        public virtual DbSet<Search> Searches { get; set; }
        public virtual DbSet<SenderPhotoUrl> SenderPhotoUrls { get; set; }
        public virtual DbSet<Student> Students { get; set; }
        public virtual DbSet<tbh_Album> tbh_Album { get; set; }
        public virtual DbSet<tbh_Blog> tbh_Blog { get; set; }
        public virtual DbSet<tbh_Brand> tbh_Brand { get; set; }
        public virtual DbSet<tbh_Category> tbh_Category { get; set; }
        public virtual DbSet<tbh_CommentLike> tbh_CommentLike { get; set; }
        public virtual DbSet<tbh_Comments> tbh_Comments { get; set; }
        public virtual DbSet<tbh_Communications> tbh_Communications { get; set; }
        public virtual DbSet<tbh_CompanyStory> tbh_CompanyStory { get; set; }
        public virtual DbSet<tbh_ContactUs> tbh_ContactUs { get; set; }
        public virtual DbSet<tbh_ContactUsEnquiry> tbh_ContactUsEnquiry { get; set; }
        public virtual DbSet<tbh_Coupon> tbh_Coupon { get; set; }
        public virtual DbSet<tbh_Departments> tbh_Departments { get; set; }
        public virtual DbSet<tbh_Documents> tbh_Documents { get; set; }
        public virtual DbSet<tbh_DSReplies> tbh_DSReplies { get; set; }
        public virtual DbSet<tbh_Faq> tbh_Faq { get; set; }
        public virtual DbSet<tbh_FeeEnquiry> tbh_FeeEnquiry { get; set; }
        public virtual DbSet<tbh_FrontSlider> tbh_FrontSlider { get; set; }
        public virtual DbSet<tbh_Gallery> tbh_Gallery { get; set; }
        public virtual DbSet<tbh_InstallmentStatus> tbh_InstallmentStatus { get; set; }
        public virtual DbSet<tbh_Language> tbh_Language { get; set; }
        public virtual DbSet<tbh_Media> tbh_Media { get; set; }
        public virtual DbSet<tbh_Membership> tbh_Membership { get; set; }
        public virtual DbSet<tbh_MenuMaster> tbh_MenuMaster { get; set; }
        public virtual DbSet<tbh_MenuPermission> tbh_MenuPermission { get; set; }
        public virtual DbSet<tbh_OrderDetails> tbh_OrderDetails { get; set; }
        public virtual DbSet<tbh_Pages> tbh_Pages { get; set; }
        public virtual DbSet<tbh_Payments> tbh_Payments { get; set; }
        public virtual DbSet<tbh_PaymentTypes> tbh_PaymentTypes { get; set; }
        public virtual DbSet<tbh_PostCategory> tbh_PostCategory { get; set; }
        public virtual DbSet<tbh_PostLike> tbh_PostLike { get; set; }
        public virtual DbSet<tbh_PostMeta> tbh_PostMeta { get; set; }
        public virtual DbSet<tbh_ProductBrand> tbh_ProductBrand { get; set; }
        public virtual DbSet<tbh_ProductCart> tbh_ProductCart { get; set; }
        public virtual DbSet<tbh_ProductCoupon> tbh_ProductCoupon { get; set; }
        public virtual DbSet<tbh_productpic> tbh_productpic { get; set; }
        public virtual DbSet<tbh_Products> tbh_Products { get; set; }
        public virtual DbSet<tbh_ProductsDetails> tbh_ProductsDetails { get; set; }
        public virtual DbSet<tbh_ProductSize> tbh_ProductSize { get; set; }
        public virtual DbSet<tbh_ReadPost> tbh_ReadPost { get; set; }
        public virtual DbSet<tbh_RecentlyViews> tbh_RecentlyViews { get; set; }
        public virtual DbSet<tbh_Replies> tbh_Replies { get; set; }
        public virtual DbSet<tbh_ReplyLike> tbh_ReplyLike { get; set; }
        public virtual DbSet<tbh_Reviews> tbh_Reviews { get; set; }
        public virtual DbSet<tbh_Services> tbh_Services { get; set; }
        public virtual DbSet<tbh_Setting> tbh_Setting { get; set; }
        public virtual DbSet<tbh_SettingMeta> tbh_SettingMeta { get; set; }
        public virtual DbSet<tbh_ShippingDetails> tbh_ShippingDetails { get; set; }
        public virtual DbSet<tbh_Shop> tbh_Shop { get; set; }
        public virtual DbSet<tbh_Slider> tbh_Slider { get; set; }
        public virtual DbSet<tbh_SliderItem> tbh_SliderItem { get; set; }
        public virtual DbSet<tbh_Social> tbh_Social { get; set; }
        public virtual DbSet<tbh_SocialLink> tbh_SocialLink { get; set; }
        public virtual DbSet<tbh_SubCategory> tbh_SubCategory { get; set; }
        public virtual DbSet<tbh_SubDepartments> tbh_SubDepartments { get; set; }
        public virtual DbSet<tbh_Subscribe> tbh_Subscribe { get; set; }
        public virtual DbSet<tbh_Tag> tbh_Tag { get; set; }
        public virtual DbSet<tbh_Wishlist> tbh_Wishlist { get; set; }
        public virtual DbSet<tbl_file> tbl_file { get; set; }
        public virtual DbSet<tbl_Order> tbl_Order { get; set; }
        public virtual DbSet<tblVideo> tblVideos { get; set; }
        public virtual DbSet<Thread> Threads { get; set; }
        public virtual DbSet<UserDto> UserDtoes { get; set; }
        public virtual DbSet<Vendor> Vendors { get; set; }
        public virtual DbSet<WCFReply> WCFReplies { get; set; }
        public virtual DbSet<WCF> WCFs { get; set; }
        public virtual DbSet<WebApiReply> WebApiReplies { get; set; }
        public virtual DbSet<WebApi> WebApis { get; set; }
        public virtual DbSet<webpages_Membership> webpages_Membership { get; set; }
        public virtual DbSet<webpages_OAuthMembership> webpages_OAuthMembership { get; set; }
        public virtual DbSet<webpages_Roles> webpages_Roles { get; set; }
        public virtual DbSet<webpages_UsersInRoles> webpages_UsersInRoles { get; set; }
        public virtual DbSet<Wishlist> Wishlists { get; set; }
        public virtual DbSet<WPFReply> WPFReplies { get; set; }
        public virtual DbSet<WPF> WPFs { get; set; }
    
        public virtual ObjectResult<sp_get_all_Docfiles_Result> sp_get_all_Docfiles()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_all_Docfiles_Result>("sp_get_all_Docfiles");
        }
    
        public virtual ObjectResult<sp_get_all_files_Result> sp_get_all_files()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_all_files_Result>("sp_get_all_files");
        }
    
        public virtual ObjectResult<sp_get_all_Video_Result> sp_get_all_Video()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_all_Video_Result>("sp_get_all_Video");
        }
    
        public virtual ObjectResult<sp_get_file_details_Result> sp_get_file_details(Nullable<int> file_id)
        {
            var file_idParameter = file_id.HasValue ?
                new ObjectParameter("file_id", file_id) :
                new ObjectParameter("file_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_file_details_Result>("sp_get_file_details", file_idParameter);
        }
    
        public virtual ObjectResult<sp_get_file_Docdetails_Result> sp_get_file_Docdetails(Nullable<int> file_id)
        {
            var file_idParameter = file_id.HasValue ?
                new ObjectParameter("file_id", file_id) :
                new ObjectParameter("file_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_file_Docdetails_Result>("sp_get_file_Docdetails", file_idParameter);
        }
    
        public virtual ObjectResult<sp_get_Video_details_Result> sp_get_Video_details(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_Video_details_Result>("sp_get_Video_details", idParameter);
        }
    
        public virtual int sp_insert_Docfile(string file_name, string file_ext, string file_base64)
        {
            var file_nameParameter = file_name != null ?
                new ObjectParameter("file_name", file_name) :
                new ObjectParameter("file_name", typeof(string));
    
            var file_extParameter = file_ext != null ?
                new ObjectParameter("file_ext", file_ext) :
                new ObjectParameter("file_ext", typeof(string));
    
            var file_base64Parameter = file_base64 != null ?
                new ObjectParameter("file_base64", file_base64) :
                new ObjectParameter("file_base64", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_insert_Docfile", file_nameParameter, file_extParameter, file_base64Parameter);
        }
    
        public virtual int sp_insert_file(string file_name, string file_ext, string file_base64)
        {
            var file_nameParameter = file_name != null ?
                new ObjectParameter("file_name", file_name) :
                new ObjectParameter("file_name", typeof(string));
    
            var file_extParameter = file_ext != null ?
                new ObjectParameter("file_ext", file_ext) :
                new ObjectParameter("file_ext", typeof(string));
    
            var file_base64Parameter = file_base64 != null ?
                new ObjectParameter("file_base64", file_base64) :
                new ObjectParameter("file_base64", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_insert_file", file_nameParameter, file_extParameter, file_base64Parameter);
        }
    
        public virtual int sp_insert_Videofile(string name, string contentType, byte[] data, Nullable<int> fileSize, string filePath, string videoTitle)
        {
            var nameParameter = name != null ?
                new ObjectParameter("Name", name) :
                new ObjectParameter("Name", typeof(string));
    
            var contentTypeParameter = contentType != null ?
                new ObjectParameter("ContentType", contentType) :
                new ObjectParameter("ContentType", typeof(string));
    
            var dataParameter = data != null ?
                new ObjectParameter("Data", data) :
                new ObjectParameter("Data", typeof(byte[]));
    
            var fileSizeParameter = fileSize.HasValue ?
                new ObjectParameter("FileSize", fileSize) :
                new ObjectParameter("FileSize", typeof(int));
    
            var filePathParameter = filePath != null ?
                new ObjectParameter("FilePath", filePath) :
                new ObjectParameter("FilePath", typeof(string));
    
            var videoTitleParameter = videoTitle != null ?
                new ObjectParameter("VideoTitle", videoTitle) :
                new ObjectParameter("VideoTitle", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_insert_Videofile", nameParameter, contentTypeParameter, dataParameter, fileSizeParameter, filePathParameter, videoTitleParameter);
        }
    
        public virtual int usp_UsersGetUserProfileData(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("usp_UsersGetUserProfileData", idParameter);
        }
    
        public virtual int DeleteStudents(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DeleteStudents", idParameter);
        }
    
        public virtual ObjectResult<getFaq_Result> getFaq()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<getFaq_Result>("getFaq");
        }
    
        public virtual ObjectResult<getStudents_Result> getStudents()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<getStudents_Result>("getStudents");
        }
    
        public virtual int InsertUpdateStudents(Nullable<int> id, string firstName, string lastName, Nullable<int> feesPaid, string gender, string emailId, string telephoneNumber, Nullable<System.DateTime> dateOfBirth, Nullable<bool> isActive, Nullable<System.DateTime> creationDate, Nullable<System.DateTime> lastModifiedDate, string action)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            var firstNameParameter = firstName != null ?
                new ObjectParameter("firstName", firstName) :
                new ObjectParameter("firstName", typeof(string));
    
            var lastNameParameter = lastName != null ?
                new ObjectParameter("lastName", lastName) :
                new ObjectParameter("lastName", typeof(string));
    
            var feesPaidParameter = feesPaid.HasValue ?
                new ObjectParameter("feesPaid", feesPaid) :
                new ObjectParameter("feesPaid", typeof(int));
    
            var genderParameter = gender != null ?
                new ObjectParameter("gender", gender) :
                new ObjectParameter("gender", typeof(string));
    
            var emailIdParameter = emailId != null ?
                new ObjectParameter("emailId", emailId) :
                new ObjectParameter("emailId", typeof(string));
    
            var telephoneNumberParameter = telephoneNumber != null ?
                new ObjectParameter("telephoneNumber", telephoneNumber) :
                new ObjectParameter("telephoneNumber", typeof(string));
    
            var dateOfBirthParameter = dateOfBirth.HasValue ?
                new ObjectParameter("dateOfBirth", dateOfBirth) :
                new ObjectParameter("dateOfBirth", typeof(System.DateTime));
    
            var isActiveParameter = isActive.HasValue ?
                new ObjectParameter("isActive", isActive) :
                new ObjectParameter("isActive", typeof(bool));
    
            var creationDateParameter = creationDate.HasValue ?
                new ObjectParameter("creationDate", creationDate) :
                new ObjectParameter("creationDate", typeof(System.DateTime));
    
            var lastModifiedDateParameter = lastModifiedDate.HasValue ?
                new ObjectParameter("lastModifiedDate", lastModifiedDate) :
                new ObjectParameter("lastModifiedDate", typeof(System.DateTime));
    
            var actionParameter = action != null ?
                new ObjectParameter("Action", action) :
                new ObjectParameter("Action", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertUpdateStudents", idParameter, firstNameParameter, lastNameParameter, feesPaidParameter, genderParameter, emailIdParameter, telephoneNumberParameter, dateOfBirthParameter, isActiveParameter, creationDateParameter, lastModifiedDateParameter, actionParameter);
        }
    
        public virtual ObjectResult<string> usp_RolesGetRolesByRoleId(Nullable<int> roleId)
        {
            var roleIdParameter = roleId.HasValue ?
                new ObjectParameter("RoleId", roleId) :
                new ObjectParameter("RoleId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("usp_RolesGetRolesByRoleId", roleIdParameter);
        }
    
        public virtual ObjectResult<usp_UsersGetAllUsers_Result> usp_UsersGetAllUsers()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<usp_UsersGetAllUsers_Result>("usp_UsersGetAllUsers");
        }
    
        public virtual ObjectResult<usp_UsersGetUserProfileData1_Result> usp_UsersGetUserProfileData1(Nullable<int> userId)
        {
            var userIdParameter = userId.HasValue ?
                new ObjectParameter("UserId", userId) :
                new ObjectParameter("UserId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<usp_UsersGetUserProfileData1_Result>("usp_UsersGetUserProfileData1", userIdParameter);
        }
    
        public virtual int usp_UsersUpdateUserProfile(Nullable<int> userId, string displayName, string email, string address)
        {
            var userIdParameter = userId.HasValue ?
                new ObjectParameter("UserId", userId) :
                new ObjectParameter("UserId", typeof(int));
    
            var displayNameParameter = displayName != null ?
                new ObjectParameter("DisplayName", displayName) :
                new ObjectParameter("DisplayName", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("Email", email) :
                new ObjectParameter("Email", typeof(string));
    
            var addressParameter = address != null ?
                new ObjectParameter("Address", address) :
                new ObjectParameter("Address", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("usp_UsersUpdateUserProfile", userIdParameter, displayNameParameter, emailParameter, addressParameter);
        }
    }
}
