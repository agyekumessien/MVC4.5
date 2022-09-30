using MainProgram.Core.Data.Base;
using MainProgram.Core.InterfacesService;
using MainProgram.Edm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.Core.ImplimentationsService
{
    public class ManufacturersService : EntityBaseRepository<Manufacturer>, IManufacturersService
    {
       
         public ManufacturersService(angulardemoEntities context) : base(context) { }
    }



    }

