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

    public partial class tbh_ReplyLike : IEntityBase
    {
        public int Id { get; set; }
        public string ReplyLikeId { get; set; }
        public string Username { get; set; }
        public bool Like { get; set; }
        public bool Dislike { get; set; }
        public Nullable<int> ReplyId { get; set; }
        public Nullable<int> tbh_Replies_Id { get; set; }
    
        public virtual tbh_Replies tbh_Replies { get; set; }
    }
}
