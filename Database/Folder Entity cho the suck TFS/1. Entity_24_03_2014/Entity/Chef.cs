//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EWC.Core.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Chef
    {
        public Chef()
        {
            this.Dishes = new HashSet<Dish>();
            this.DishItems = new HashSet<DishItem>();
        }
    
        public int UserID { get; set; }
        public string ImageURL { get; set; }
        public string Description { get; set; }
        public double Rate { get; set; }
        public int NumberOfRate { get; set; }
    
        public virtual ICollection<Dish> Dishes { get; set; }
        public virtual ICollection<DishItem> DishItems { get; set; }
    }
}