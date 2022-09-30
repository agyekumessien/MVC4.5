
using MainProgram.Core.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MainProgram.Core.ModelService
{

    public enum CategoryItemNames
    {

        Miscellaneous = 1,
        Entertainment,
        Furniture,
        Outdooring,
        Electronics,
        Education,
        Books,
        Clothing
    }



    public partial class CategoryItem : IEntityBase
    {
        public int Id { get; set; }
        public int DepartmentID { get; set; }
        public CategoryItemNames Name { get; set; }
        public decimal Budget { get; set; }
    }

}