using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.Areas.Admin.Models
{
    public class Users_in_Role_ViewModel
    {
           
        public int UserId { get; set; }  
        public string Username { get; set; }  
        public string Email { get; set; }  
        public string Role { get; set; }  
    }  
    
}