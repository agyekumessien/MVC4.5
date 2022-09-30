using MainProgram.Controllers;
using MainProgram.Core.ImplimentationsService;
using MainProgram.Core.InterfacesService;
using System.Web.Mvc;
using Unity;
using Unity.Injection;
using Unity.Mvc5;

namespace MainProgram
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();
            
            // register all your components with the container here
            // it is NOT necessary to register your controllers
            
            // e.g. container.RegisterType<ITestService, TestService>();



            container.RegisterType<AccountController>(new InjectionConstructor());

            container.RegisterType<IManufacturersService, ManufacturersService>();
           // container.RegisterType<IProductsService, ProductsService>();
           // container.RegisterType<ICategoriesService, CategoriesService>();


            
            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}