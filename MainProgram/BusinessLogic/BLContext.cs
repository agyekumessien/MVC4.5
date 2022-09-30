using MainProgram.Edm;
using MainProgram.Models.Search;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.BusinessLogic
{
    public class BLContext
    {
         private angulardemoEntities Context;
         public BLContext()
        {
            Context = new angulardemoEntities();
        }
//1
         public IQueryable<CSharp> GetCSharp(CSharpSearchModel searchModel)
         {
             var result = Context.CSharps.AsQueryable();
             if (searchModel != null)
             {
                 if (searchModel.Id.HasValue)
                     result = result.Where(x => x.CSId == searchModel.Id);
                 if (!string.IsNullOrEmpty(searchModel.CSharpText))
                     result = result.Where(x => x.CSharpText.Contains(searchModel.CSharpText));
                 if (!string.IsNullOrEmpty(searchModel.CSharpTitle))
                     result = result.Where(x => x.CSharpTitle.Contains(searchModel.CSharpTitle));
                 if (searchModel.UserId.HasValue)
                     result = result.Where(x => x.UserId <= searchModel.UserId);
                 if (searchModel.Id.HasValue)
                     result = result.Where(x => x.CSId == searchModel.Id);
             }
             return result;
         }



//2
      public IQueryable<DotNet> GetDotNet(DotNetSearchModel searchModel)
        {
            var result = Context.DotNets.AsQueryable();
            if (searchModel != null)
            {
                if (searchModel.Id.HasValue)
                    result = result.Where(x => x.DotNetId == searchModel.Id);
                if (!string.IsNullOrEmpty(searchModel.DotNetText))
                    result = result.Where(x => x.DotNetText.Contains(searchModel.DotNetText));
                if (!string.IsNullOrEmpty(searchModel.DotNetTitle))
                    result = result.Where(x => x.DotNetTitle.Contains(searchModel.DotNetTitle));
                if (searchModel.UserId.HasValue)
                    result = result.Where(x => x.UserId <= searchModel.UserId);
            }
            return result;
        }


      public IQueryable<Databas> GetSqlServer(SqlServerSearchModel searchModel)
      {
          var result = Context.Databases.AsQueryable();
          if (searchModel != null)
          {
              if (searchModel.Id.HasValue)
                  result = result.Where(x => x.DbId == searchModel.Id);
              if (!string.IsNullOrEmpty(searchModel.DatabasesText))
                  result = result.Where(x => x.DatabasesText.Contains(searchModel.DatabasesText));
              if (!string.IsNullOrEmpty(searchModel.DatabasesTitle))
                  result = result.Where(x => x.DatabasesTitle.Contains(searchModel.DatabasesTitle));
              if (searchModel.UserId.HasValue)
                  result = result.Where(x => x.UserId <= searchModel.UserId);
          }
          return result;
      }

      public IQueryable<CSS> GetCSS(CSSSearchModel searchModel)
      {
          var result = Context.CSSes.AsQueryable();
          if (searchModel != null)
          {
              if (searchModel.Id.HasValue)
                  result = result.Where(x => x.CSSId == searchModel.Id);
              if (!string.IsNullOrEmpty(searchModel.CSSText))
                  result = result.Where(x => x.CSSText.Contains(searchModel.CSSText));
              if (!string.IsNullOrEmpty(searchModel.CSSTitle))
                  result = result.Where(x => x.CSSTitle.Contains(searchModel.CSSTitle));
              if (searchModel.UserId.HasValue)
                  result = result.Where(x => x.UserId <= searchModel.UserId);
          }
          return result;
      }

      public IQueryable<EntityFrameWork> GetEntityF(EntityFSearchModel searchModel)
      {
          var result = Context.EntityFrameWorks.AsQueryable();
          if (searchModel != null)
          {
              if (searchModel.Id.HasValue)
                  result = result.Where(x => x.EntityFId == searchModel.Id);
              if (!string.IsNullOrEmpty(searchModel.EntityFText))
                  result = result.Where(x => x.EntityFText.Contains(searchModel.EntityFText));
              if (!string.IsNullOrEmpty(searchModel.EntityFTitle))
                  result = result.Where(x => x.EntityFTitle.Contains(searchModel.EntityFTitle));
              if (searchModel.UserId.HasValue)
                  result = result.Where(x => x.UserId <= searchModel.UserId);
          }
          return result;
      }

      public IQueryable<JqJava> GetJqJava(JqJavaSearchModel searchModel)
      {
          var result = Context.JqJavas.AsQueryable();
          if (searchModel != null)
          {
              if (searchModel.Id.HasValue)
                  result = result.Where(x => x.JqJavaId == searchModel.Id);
              if (!string.IsNullOrEmpty(searchModel.JqJavaText))
                  result = result.Where(x => x.JqJavaText.Contains(searchModel.JqJavaText));
              if (!string.IsNullOrEmpty(searchModel.JqJavaTitle))
                  result = result.Where(x => x.JqJavaTitle.Contains(searchModel.JqJavaTitle));
              if (searchModel.UserId.HasValue)
                  result = result.Where(x => x.UserId <= searchModel.UserId);
          }
          return result;
      }

 public IQueryable<AspWebform> GetAspWebF(AspWebformSearchModel searchModel)
      {
          var result = Context.AspWebforms.AsQueryable();
          if (searchModel != null)
          {
              if (searchModel.Id.HasValue)
                  result = result.Where(x => x.AspWfId == searchModel.Id);
              if (!string.IsNullOrEmpty(searchModel.AspWfText))
                  result = result.Where(x => x.AspWfText.Contains(searchModel.AspWfText));
              if (!string.IsNullOrEmpty(searchModel.AspWfTitle))
                  result = result.Where(x => x.AspWfTitle.Contains(searchModel.AspWfTitle));
              if (searchModel.UserId.HasValue)
                  result = result.Where(x => x.UserId <= searchModel.UserId);
          }
          return result;
      }

 public IQueryable<DBA> GetDBA(DBASearhModel searchModel)
 {
     var result = Context.DBAs.AsQueryable();
     if (searchModel != null)
     {
         if (searchModel.Id.HasValue)
             result = result.Where(x => x.DBAId == searchModel.Id);
         if (!string.IsNullOrEmpty(searchModel.DBAText))
             result = result.Where(x => x.DBAText.Contains(searchModel.DBAText));
         if (!string.IsNullOrEmpty(searchModel.DBATitle))
             result = result.Where(x => x.DBATitle.Contains(searchModel.DBATitle));
         if (searchModel.UserId.HasValue)
             result = result.Where(x => x.UserId <= searchModel.UserId);
     }
     return result;

    }

 public IQueryable<MVC> GetMVC(MVCSearchModel searchModel)
 {
     var result = Context.MVCs.AsQueryable();
     if (searchModel != null)
     {
         if (searchModel.Id.HasValue)
             result = result.Where(x => x.MVCId == searchModel.Id);
         if (!string.IsNullOrEmpty(searchModel.MVCText))
             result = result.Where(x => x.MVCText.Contains(searchModel.MVCText));
         if (!string.IsNullOrEmpty(searchModel.MVCTitle))
             result = result.Where(x => x.MVCTitle.Contains(searchModel.MVCTitle));
         if (searchModel.UserId.HasValue)
             result = result.Where(x => x.UserId <= searchModel.UserId);
     }
     return result;

  
 }

 }
}

