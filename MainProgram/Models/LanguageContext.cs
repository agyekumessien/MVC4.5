using MainProgram.Edm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace MainProgram.Core
{
    public class LanguageContext
    {
     public static IEnumerable<tbh_Language> LanguageList()
        {

            angulardemoEntities db = new angulardemoEntities();

      var query = (from b in db.tbh_Language
                    orderby b.LanguageId
                    select b)
                    .Include(p => p.LanguageName)
                    .ToList();

        return query;

    }
      }
    }