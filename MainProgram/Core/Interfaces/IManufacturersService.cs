using MainProgram.Core.Data.Base;
using MainProgram.Edm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainProgram.Core.InterfacesService
{
    public interface IManufacturersService : IEntityBaseRepository<Manufacturer>
    {
    }
}