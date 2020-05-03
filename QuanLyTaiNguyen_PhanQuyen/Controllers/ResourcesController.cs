using DataAccess;
using DataAccess.DAO;
using DataAccess.DTO;
using QuanLyTaiNguyen_PhanQuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyTaiNguyen_PhanQuyen.Controllers
{
    public class ResourcesController : Controller
    {
        // GET: Resources
        public ActionResult Index()
        {
            List<ResourcesCatalog> model = InitModel();
            return View(model);
        }

        public ActionResult Details(int id)
        {
            return View();
        }

        public ActionResult CreateCategory()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateCategory(FormCollection collection)
        {
            try
            {
                ResourceCategory result = new ResourceCategory();
                result.Name = collection["Name"];
                result.Description = collection["Description"];
                ResourceCategoryDAO.Add(result);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult CreateResource()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateResource(FormCollection collection)
        {
           try
           {
                // TODO: Add insert logic here
                Resources resources = new Resources();
                resources.Name = collection["Name"];
                resources.CategoryID = Convert.ToInt32(collection["CategoryID"]);
                resources.NameMethod = collection["NameMethod"];
                resources.Description = collection["Description"];
                resources.Icon = collection["Icon"];
                ResourcesDAO.Add(resources);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        public ActionResult Edit(int id)
        {
            Resources resources = ResourcesDAO.Single(id.ToString());
            return View(resources);
        }

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                Resources resources = ResourcesDAO.Single(id.ToString());
                bool rs=ResourcesDAO.Update(resources);
                if (rs) { return RedirectToAction("Index"); }
                else { return View(resources); }
            }
            catch
            {
                return View();
            }
        }

        public ActionResult Delete(int id)
        {
            return View();
        }
        /// <summary>
        /// khoi tao gia tri cho model bang cach lay gia tri cua resources va resourcesCategory tu db
        /// </summary>
        /// <returns></returns>
        List <ResourcesCatalog> InitModel()
        {
            List<ResourcesCatalog> rs = new List<ResourcesCatalog>();
            List<Resources> resources = ResourcesDAO.GetAll();
            //voi moi phan tu rescource, lay category va add vao list ket qua
            foreach(Resources res in resources)
            {
                ResourceCategory resourcesCategory = ResourceCategoryDAO.Single(res.CategoryID.ToString());
                rs.Add(new ResourcesCatalog(res, resourcesCategory));
            }
            return rs;
        }
    }
}