using MainProgram.Core.InterfacesService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace MainProgram.ControllerTest
{
    public class ManufacturerController : Controller
    {
        // GET: ManufacturersController
        //[Authorize(Roles = UserRoles.Admin)]

        private readonly IManufacturersService _service;

        public ManufacturerController(IManufacturersService _service)
        {
            this._service = _service;
        }


        public async Task<ActionResult> Index()
        {
            return View(await this._service.GetAllAsync());

        }
    }
}