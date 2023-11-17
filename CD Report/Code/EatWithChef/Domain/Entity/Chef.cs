//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Domain.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Chef
    {
        public Chef()
        {
            this.Dishes = new HashSet<Dish>();
            this.ChefSkills = new HashSet<ChefSkill>();
            this.DishItems = new HashSet<DishItem>();
            this.FAQs = new HashSet<FAQ>();
        }
    
        public int UserID { get; set; }
        public string ImageURL { get; set; }
        public string Description { get; set; }
    
        public virtual ICollection<Dish> Dishes { get; set; }
        public virtual ICollection<ChefSkill> ChefSkills { get; set; }
        public virtual ICollection<DishItem> DishItems { get; set; }
        public virtual ICollection<FAQ> FAQs { get; set; }
    }
}