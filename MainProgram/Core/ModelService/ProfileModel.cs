using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MainProgram.Edm;
using System.ComponentModel;

namespace MainProgram.Core.ModelService
{
    public class ProfileModel
    {
        public int ImageId { get; set; }
        public int UserId { get; set; }
        public string FullImageUrl { get; set; }
        public bool IsActive { get; set; }
    
        public string Firstname { get; internal set; }
        public string Lastname { get; internal set; }
        public string Fullname { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Email { get; set; } 
        public string Username { get; set; }
        public string IsEmailVerified { get; set; }
         public string IsTwoFactorOn { get; set; }
        public DateTime? Birthday { get; internal set; }
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
        public byte[] image { get; set; }
        public byte[] PersonalPhoto { get; set; }
        public int LoginCount { get; set; }




        public ICollection<tbh_ImageModel> Image { get; set; }
        public ICollection<AspNetUser> User { get; set; }
    }
}