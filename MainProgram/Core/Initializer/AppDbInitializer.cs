using Microsoft.Owin;
using Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

using System.Web;
using Microsoft.AspNet.Identity.Owin;
using System.Web.Services.Description;


using System.Collections.Generic;
using System;
using MainProgram.Edm;
using MainProgram.Core.ModelService;

namespace MainProgram.Core.Data.Initializer
{
    public class AppDbInitializer
    {
        public static void Seed()
        {
            using (angulardemoEntities context = new angulardemoEntities())
            {
                if (context.Database.Exists())
                {

                    //Manufacturer
                    if (!context.Database.Exists())
                    {
                        context.Manufacturers.AddRange(new List<Manufacturer>()
                    {
                        new Manufacturer()
                        {
                            Name = "Manufacturer 1",
                            Logo = "/Content/img/ApparelImages/Books/StepsCoding.jpg",
                            Description = "This is the description of the first Manufacturer"
                        },
                        new Manufacturer()
                        {
                            Name = "Manufacturer 2",
                            Logo = "/Content/img/ApparelImages/Women/1016a.jpg",
                            Description = "This is the description of the first Manufacturer"
                        },
                        new Manufacturer()
                        {
                            Name = "Manufacturer 3",
                            Logo = "Content/img/ApparelImages/Men/Men_c1.jpg",
                            Description = "This is the description of the first Manufacturer for Men cloth"
                        },
                        new Manufacturer()
                        {
                            Name = "Manufacturer 4",
                            Logo = "Content/img/ApparelImages/Hardwares/tool.png",
                            Description = "This is the description of the first Manufacturer"
                        },
                        new Manufacturer()
                        {
                            Name = "Manufacturer 5",
                            Logo = "Content/img/ApparelImages/Television/Telev.jpg",
                            Description = "This is the description of the first Manufacturer"
                        },
                    });
                        context.SaveChanges();
                    }
                    //Vendors
                    if (!context.Database.Exists())
                    {
                        context.Vendors.AddRange(new List<Vendor>()
                    {
                        new Vendor()
                        {
                            FullName = "Vendor 1",
                            Bio = "This is the Bio of the first Vendor",
                            ProfilePictureURL = "http://dotnethow.net/images/actors/actor-1.jpeg"

                        },
                        new Vendor()
                        {
                            FullName = "Actor 2",
                            Bio = "This is the Bio of the second actor",
                            ProfilePictureURL = "http://dotnethow.net/images/actors/actor-2.jpeg"
                        },
                        new Vendor()
                        {
                            FullName = "Vendor 3",
                            Bio = "This is the Bio of the second Vendor",
                            ProfilePictureURL = "http://dotnethow.net/images/actors/actor-3.jpeg"
                        },
                        new Vendor()
                        {
                            FullName = "Vendor 4",
                            Bio = "This is the Bio of the second Vendor",
                            ProfilePictureURL = "http://dotnethow.net/images/actors/actor-4.jpeg"
                        },
                        new Vendor()
                        {
                            FullName = "Vendor 5",
                            Bio = "This is the Bio of the second Vendor",
                            ProfilePictureURL = "http://dotnethow.net/images/actors/actor-5.jpeg"
                        }
                    });
                        context.SaveChanges();
                    }
                    //Producers
                    if (!context.Database.Exists())
                    {
                        context.Producers.AddRange(new List<Producer>()
                    {
                        new Producer()
                        {
                            FullName = "Producer 1",
                            Bio = "This is the Bio of the first actor",
                            ProfilePictureURL = "http://dotnethow.net/images/producers/producer-1.jpeg"

                        },
                        new Producer()
                        {
                            FullName = "Producer 2",
                            Bio = "This is the Bio of the second actor",
                            ProfilePictureURL = "http://dotnethow.net/images/producers/producer-2.jpeg"
                        },
                        new Producer()
                        {
                            FullName = "Producer 3",
                            Bio = "This is the Bio of the second actor",
                            ProfilePictureURL = "http://dotnethow.net/images/producers/producer-3.jpeg"
                        },
                        new Producer()
                        {
                            FullName = "Producer 4",
                            Bio = "This is the Bio of the second actor",
                            ProfilePictureURL = "http://dotnethow.net/images/producers/producer-4.jpeg"
                        },
                        new Producer()
                        {
                            FullName = "Producer 5",
                            Bio = "This is the Bio of the second actor",
                            ProfilePictureURL = "http://dotnethow.net/images/producers/producer-5.jpeg"
                        }
                    });
                        context.SaveChanges();
                    }


                    //tbh_Category
                    if (!context.Database.Exists())
                    {
                        context.tbh_Category.AddRange(new List<tbh_Category>()
                    {
                        new tbh_Category()
                        {
                           CategoryID = 1,
                            Name = "Women Clothing",
                            MenuUrl = "Women",
                            
                        FullImageUrl = "/Content/img/ApparelImages/Books/CBeginners.jpg",
                        MenuIcon = "Category",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },

                        new tbh_Category()
                        {
                           CategoryID = 2,
                            Name = "Men Clothing",
                            MenuUrl = "Men",
                            
                        FullImageUrl = "",
                        MenuIcon = "Category",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },
                         new tbh_Category()
                        {
                           CategoryID = 3,
                            Name = "Kids And Toys",
                            MenuUrl = "Kids",
                            
                        FullImageUrl = "",
                        MenuIcon = "Kids",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },
                         new tbh_Category()
                        {
                           CategoryID = 4,
                            Name = "Jewelry",
                            MenuUrl = "Jewelry",
                            
                        FullImageUrl = "",
                        MenuIcon = "Jewelry",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },
                        new tbh_Category()
                        {
                           CategoryID = 5,
                            Name = "Shoe",
                            MenuUrl = "Shoe",
                            
                        FullImageUrl = "",
                        MenuIcon = "Shoe",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },

                         new tbh_Category()
                        {
                           CategoryID = 6,
                            Name = "Computer and Tablet",
                            MenuUrl = "Computer and Tablet",
                            
                        FullImageUrl = "",
                        MenuIcon = "Computer and Tablet",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },

                         new tbh_Category()
                        {
                           CategoryID = 7,
                            Name = "Cell Phones",
                            MenuUrl = "Cell Phones",
                            
                        FullImageUrl = "",
                        MenuIcon = "Cell Phones",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },
                         new tbh_Category()
                        {
                           CategoryID = 8,
                            Name = "Appliances",
                            MenuUrl = "Appliances",
                            
                        FullImageUrl = "",
                        MenuIcon = "Appliances",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },

                         new tbh_Category()
                        {
                           CategoryID = 9,
                            Name = "Furniture and chairs",
                            MenuUrl = "Furniture and chairs",
                            
                        FullImageUrl = "",
                        MenuIcon = "Furniture and chairs",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },

                         new tbh_Category()
                        {
                           CategoryID = 10,
                            Name = "Sports and Outdooring",
                            MenuUrl = "Sports and Outdooring",
                            
                        FullImageUrl = "",
                        MenuIcon = "Sports and Outdooring",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },

                         new tbh_Category()
                        {
                           CategoryID = 11,
                            Name = "Tools",
                            MenuUrl = "Tools",
                            
                        FullImageUrl = "",
                        MenuIcon = "Tools",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        },

                         new tbh_Category()
                        {
                           CategoryID = 12,
                            Name = "Books",
                            MenuUrl = "Books",
                            
                        FullImageUrl = " /Content/img/ApparelImages/Books/Vcoding2.png",
                        MenuIcon = "Books",
                        DateAdded = DateTime.Now.AddDays(-10),
                         IsActive = true,
                            Status   = true,
                        
                        }


                    });
                        context.SaveChanges();
                    }



                    //tbh_PRODUCTS

                    if (!context.Database.Exists())
                    {
                        context.tbh_Products.AddRange(new List<tbh_Products>()
                    {
                        new tbh_Products()
                        {
                            ProductID = 1,
                            
                             DepartmentID =1,
                            CategoryID = 12,

                            Name = "McMagain",
                           ProductsURL =  "McMagain",
                           MenuIcon = "Books",
                           Content = "Beginners books",
                           ShortDescription ="Beginners books",
                           Quantity = 1,
                            UnitPrice = 42.50m,
                            OldPrice = 25,
                            DiscountPercentage = 5,
                            UnitsInStock = 10,
                             TotalRating = 5,
                            FullImageUrl = "/Content/img/ApparelImages/Books/CBeginners.jpg",
                            AddedDate = DateTime.Now.AddDays(-10),
                            EndDate = DateTime.Now.AddDays(10),
                            ManufacturerId = 1,
                           
                           
                            Picture1 = "/Content/img/Books/CInterview.jpg",
                            Picture2 = "/Content/img/Books/CInterview.jpg",
                            Picture3 = "/Content/img/Books/CInterview.jpg",
                            Picture4 = "/Content/img/Books/CInterview.jpg",
                            IsActive = true,
                            Status   = 1,
                            Main     = true,
                            Description = "This is the Life movie description",

                            CategoryItems = Convert.ToInt32(CategoryItemNames.Books)


                        },
                        new tbh_Products()
                        {
                              ProductID = 2,
                           
                            DepartmentID =1,
                            CategoryID = 12,

                            Name = "McMagain",
                           ProductsURL =  "McDowell",
                           MenuIcon = "McDowell",
                           Content = "Interview Book",
                           ShortDescription ="Interview Book",
                           Quantity = 1,
                            UnitPrice = 180.10m,
                            OldPrice = 200,
                            DiscountPercentage = 20,
                            UnitsInStock = 22,
                             TotalRating = 4,
                            FullImageUrl = "/Content/img/ApparelImages/Books/CInterview.jpg",
                          
                            AddedDate = DateTime.Now.AddDays(-10),
                            EndDate = DateTime.Now.AddDays(10),
                            ManufacturerId = 1,
                           
                           
                            Picture1 = "/Content/img/Books/CInterview.jpg",
                            Picture2 = "/Content/img/Books/CInterview.jpg",
                            Picture3 = "/Content/img/Books/CInterview.jpg",
                            Picture4 = "/Content/img/Books/CInterview.jpg",
                            IsActive = true,
                            Status   = 1,
                            Main     = true,
                            Description = "This is the Life movie description",

                               CategoryItems = Convert.ToInt32(CategoryItemNames.Books)

                        },
                        new tbh_Products()
                        {

                               ProductID = 3,
                                DepartmentID =1,
                            CategoryID = 12,

                            Name = "Woodcock",
                           ProductsURL =  "Woodcock",
                           MenuIcon = "Woodcock",
                           Content = "Beginners books",
                           ShortDescription ="Coding from Scratch",
                           Quantity = 1,
                            UnitPrice = 42.50m,
                            OldPrice = 25,
                            DiscountPercentage = 5,
                            UnitsInStock = 10,
                             TotalRating = 2,
                            FullImageUrl = "/Content/img/ApparelImages/Books/CScratch.jpg",
                            AddedDate = DateTime.Now.AddDays(-10),
                            EndDate = DateTime.Now.AddDays(10),
                            ManufacturerId = 1,
                           
                           
                            Picture1 = "//Content/img/Books/CScratch.jpg",
                            Picture2 = "/Content/img/Books/CScratch.jpg",
                            Picture3 = "/Content/img/Books/CScratch.jpg",
                            Picture4 = "/Content/img/Books/CScratch.jpg",
                            IsActive = true,
                            Status   = 1,
                            Main     = true,
                            Description = "This is the Life product description",

                             CategoryItems = Convert.ToInt32(CategoryItemNames.Books)

                        },
                         new tbh_Products()
                        {

                              ProductID = 4,
                           DepartmentID =1,
                            CategoryID = 12,

                            Name = "DK",
                           ProductsURL =  "DK",
                           MenuIcon = "Book",
                           Content = "Steps Coding book",
                           ShortDescription ="Coding book",
                           Quantity = 1,
                            UnitPrice = 92.00m,
                            OldPrice = 111.00m,
                            DiscountPercentage = 5,
                            UnitsInStock = 12,
                             TotalRating = 4,
                            FullImageUrl = "/Content/img/ApparelImages/Books/StepsCoding.jpg",
                            AddedDate = DateTime.Now.AddDays(-10),
                            EndDate = DateTime.Now.AddDays(10),
                            ManufacturerId = 1,
                           
                           
                            Picture1 = "/Content/img/ApparelImages/Books/StepsCoding.jpg",
                            Picture2 = "/Content/img/ApparelImages/Books/StepsCoding.jpg",
                            Picture3 = "/Content/img/ApparelImages/Books/StepsCoding.jpg",
                            Picture4 = "/Content/img/ApparelImages/Books/StepsCoding.jpg",
                            IsActive = true,
                            Status   = 1,
                            Main     = true,
                            Description = "This is the coding book ",
    CategoryItems = Convert.ToInt32(CategoryItemNames.Books)

                        },
                        new tbh_Products()
                        {
                               ProductID = 5,
                                DepartmentID =1,
                            CategoryID = 12,

                            Name = "Whitney",
                           ProductsURL =  "Whitney",
                           MenuIcon = "Books",
                           Content = "Beginners books",
                           ShortDescription ="Whitney books",
                           Quantity = 1,
                            UnitPrice = 82.50m,
                            OldPrice = 90,
                            DiscountPercentage = 15,
                            UnitsInStock = 15,
                             TotalRating = 5,
                            FullImageUrl = "/Content/img/ApparelImages/Books/Vcoding.jpg",
                            AddedDate = DateTime.Now.AddDays(-10),
                            EndDate = DateTime.Now.AddDays(10),
                            ManufacturerId = 1,
                           
                           
                            Picture1 = "/Content/img/ApparelImages/Books/Vcoding.jpg",
                            Picture2 = "/Content/img/ApparelImages/Books/Vcoding.jpg",
                            Picture3 = "/Content/img/ApparelImages/Books/Vcoding.jpg",
                            Picture4 = "/Content/img/ApparelImages/Books/Vcoding.jpg",
                            IsActive = true,
                            Status   = 1,
                            Main     = true,
                            Description = "This is the Life books",

                                CategoryItems = Convert.ToInt32(CategoryItemNames.Books)

                        },
                        new tbh_Products()
                        {

                            ProductID = 6,
                            DepartmentID = 1,
                            
                            CategoryID = 12,

                            Name = "St John",
                           ProductsURL =  "St. John",
                           MenuIcon = "Books",
                           Content = "Games books",
                           ShortDescription ="Games books",
                           Quantity = 1,
                            UnitPrice = 18.50m,
                            OldPrice = 23.01m,
                            DiscountPercentage = 5,
                            UnitsInStock = 11,
                             TotalRating = 3,
                            FullImageUrl = "/Content/img/ApparelImages/Books/VGames.jpg",
                            AddedDate = DateTime.Now.AddDays(-10),
                            EndDate = DateTime.Now.AddDays(10),
                            ManufacturerId = 1,
                           
                           
                            Picture1 = "/Content/img/ApparelImages/Books/VGames.jpg",
                            Picture2 = "/Content/img/ApparelImages/Books/VGames.jpg",
                            Picture3 = "/Content/img/ApparelImages/Books/VGames.jpg",
                            Picture4 = "/Content/img/ApparelImages/Books/VGames.jpg",
                            IsActive = true,
                            Status   = 1,
                            Main     = true,
                            Description = "This is the Life Games",


                            CategoryItems = Convert.ToInt32(CategoryItemNames.Books)

                        },

                        //WOMEN

                         new tbh_Products()
                        {

                            ProductID = 7,
                            DepartmentID = 2,
                            
                            CategoryID = 1,

                            Name = "Women-Dress",
                           ProductsURL =  "Women",
                           MenuIcon = "Women",
                           Content = "Women whole dress",
                           ShortDescription ="Women whole dress",
                           Quantity = 1,
                            UnitPrice = 32.50m,
                            OldPrice = 35.01m,
                            DiscountPercentage = 3,
                            UnitsInStock = 8,
                             TotalRating = 5,
                            FullImageUrl = "/Content/img/ApparelImages/Women/1016a.jpg",
                            AddedDate = DateTime.Now.AddDays(-10),
                            EndDate = DateTime.Now.AddDays(10),
                            ManufacturerId = 2,
                           
                           
                            Picture1 = "/Content/img/ApparelImages/Women/1016a.jpg",
                            Picture2 = "/Content/img/ApparelImages/Women/1016b.jpg",
                            Picture3 = "/Content/img/ApparelImages/Women/1016c.jpg",
                            Picture4 = "/Content/img/ApparelImages/Women/1016a.jpg",
                            IsActive = true,
                            Status   = 1,
                            Main     = true,
                            Description = "This is the Life Games",

                                CategoryItems = Convert.ToInt32(CategoryItemNames.Clothing)

                        },

                         new tbh_Products()
                        {

                            ProductID = 8,
                            DepartmentID = 2,
                            CategoryID = 1,

                            Name = "Women Top",
                           ProductsURL =  "Women Top",
                           MenuIcon = "Women",
                           Content = "Games books",
                           ShortDescription ="Games books",
                           Quantity = 1,
                            UnitPrice = 18.50m,
                            OldPrice = 23.01m,
                            DiscountPercentage = 5,
                            UnitsInStock = 11,
                             TotalRating = 3,
                            FullImageUrl = "/Content/img/ApparelImages/Women/1017a.jpg",
                            AddedDate = DateTime.Now.AddDays(-10),
                            EndDate = DateTime.Now.AddDays(10),
                            ManufacturerId = 2,
                           
                           
                            Picture1 = "/Content/img/ApparelImages/1017a.jpg",
                            Picture2 = "/Content/img/ApparelImages/Women/1016b.jpg",
                            Picture3 = "/Content/img/ApparelImages/Women/1016c.jpg",
                            Picture4 = "/Content/img/ApparelImages/1017a.jpg",
                            IsActive = true,
                            Status   = 1,
                            Main     = true,
                            Description = "This is the Women Casual",

                             CategoryItems = Convert.ToInt32(CategoryItemNames.Clothing)

                        },

                         new tbh_Products()
                        {

                            ProductID = 9,
                            DepartmentID = 2,
                            CategoryID = 1,

                            Name = "Women- Pant",
                           ProductsURL =  "Women- Pant",
                           MenuIcon = "Women- Pant",
                           Content = "Women- Pant",
                           ShortDescription ="Women- Pant",
                           Quantity = 1,
                            UnitPrice = 13.50m,
                            OldPrice = 18.01m,
                            DiscountPercentage = 10,
                            UnitsInStock = 19,
                             TotalRating = 4,
                            FullImageUrl = "/Content/img/ApparelImages/Women/1019a.jpg",
                            AddedDate = DateTime.Now.AddDays(-10),
                            EndDate = DateTime.Now.AddDays(10),
                            ManufacturerId = 2,
                           
                           
                            Picture1 = "/Content/img/ApparelImages/Women/1019a.jpg",
                            Picture2 = "/Content/img/ApparelImages/Women/1019b.jpg",
                            Picture3 = "/Content/img/ApparelImages/Women/1016c.jpg",
                            Picture4 = "/Content/img/ApparelImages/Women/1019a.jpg",
                            IsActive = true,
                            Status   = 1,
                            Main     = true,
                            Description = "This is the Life Women Moderate garment",

                            CategoryItems = Convert.ToInt32(CategoryItemNames.Clothing)

                        }




                    });
                        context.SaveChanges();
                    }
                    //Actors & Movies
                  /*  if (context.Database.Exists())
                    {
                        context.Vendors_tbh_Products.AddRange(new List<Vendor_tbh_Products>()
                    {
                        new Vendor_tbh_Products()
                        {
                            VendorId = 1,
                            ProductID = 1
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 3,
                            ProductID = 1
                        },

                         new Vendor_tbh_Products()
                        {
                            VendorId = 1,
                            ProductID = 2
                        },
                         new Vendor_tbh_Products()
                        {
                            VendorId = 4,
                            ProductID = 2
                        },

                        new Vendor_tbh_Products()
                        {
                            VendorId = 1,
                            ProductID = 3
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 2,
                            ProductID = 3
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 5,
                            ProductID = 3
                        },


                        new Vendor_tbh_Products()
                        {
                            VendorId = 2,
                            ProductID = 4
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 3,
                            ProductID = 4
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 4,
                            ProductID = 4
                        },


                        new Vendor_tbh_Products()
                        {
                            VendorId = 2,
                            ProductID = 5
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 3,
                            ProductID = 5
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 4,
                            ProductID = 5
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 5,
                            ProductID = 5
                        },


                        new Vendor_tbh_Products()
                        {
                            VendorId = 3,
                            ProductID = 6
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 4,
                            ProductID = 6
                        },
                        new Vendor_tbh_Products()
                        {
                            VendorId = 5,
                            ProductID = 6
                        },
                    });*/



                        context.SaveChanges();
                    }
                }

            }
        }
    }
