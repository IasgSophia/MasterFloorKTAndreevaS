//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MasterFloorApp.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Products
    {
        public int Id { get; set; }
        public int ProductTypeId { get; set; }
        public int PartnerProductsId { get; set; }
        public int Article { get; set; }
        public decimal MinCostForPartner { get; set; }
    
        public virtual PartnerProducts PartnerProducts { get; set; }
        public virtual ProductType ProductType { get; set; }
    }
}
