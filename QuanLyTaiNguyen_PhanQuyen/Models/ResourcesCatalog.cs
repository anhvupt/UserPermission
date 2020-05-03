using DataAccess;
using DataAccess.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyTaiNguyen_PhanQuyen.Models
{
    public class ResourcesCatalog
    {
        public ResourceCategory resourceCategory;
        public Resources resources;

        public ResourcesCatalog() { }
        public ResourcesCatalog(Resources resources, ResourceCategory category)
        {
            this.resourceCategory = category;
            this.resources = resources;
        }
        public void DeleteResource(int id)
        {
            ResourcesDAO.Delete(id.ToString());
        }
    }

    
}