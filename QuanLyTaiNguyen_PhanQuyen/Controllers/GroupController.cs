using DataAccess;
using QuanLyTaiNguyen_PhanQuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyTaiNguyen_PhanQuyen.Controllers
{
    public class GroupController : Controller
    {
        // GET: GroupManagement
        public ActionResult Index()
        {
            List<GroupManagement> model = InitModel();
            return View(model);
        }
        /// <summary>
        /// tao model gom danh sach group va cac resources cua no
        /// </summary>
        /// <returns></returns>
        List<GroupManagement> InitModel()
        {
            List<GroupManagement> result = new List<GroupManagement>();
            //load toan bo group tu database
            List<PerGroup> groups = PerGroupDAO.getAll();
            foreach (PerGroup group in groups)
            {
                //gan tung group cho thuoc tinh group cua model
                GroupManagement groupManagement = new GroupManagement();
                groupManagement.PerGroup = group;
                groupManagement.GetListResourcesByGroupID(group.GroupID);
                result.Add(groupManagement);
            }
            return result;
        }
        // GET: Employee/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Employee/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Employee/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here
                PerGroup group = new PerGroup();
                group.Name = collection["Name"];
                group.Description = collection["Description"];
                PerGroupDAO.Add(group);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Employee/Create
        public ActionResult AddResources(int id)
        {
            GroupResources model = new GroupResources();
            model.GroupID = id;
            return View(model);
        }

        // POST: Employee/Create
        [HttpPost]
        public ActionResult AddResources(int id, FormCollection collection)
        {
            //try
            //{
                // TODO: Add insert logic here
                GroupResources groupResources = new GroupResources();
                groupResources.GroupID = Convert.ToInt32(collection["GroupID"]);
                groupResources.RecourceID = Convert.ToInt32(collection["RecourceID"]);
                int rs = GroupResourcesDAO.Add(groupResources);
            if (rs > 0) { return RedirectToAction("Index"); }
            else { return View(id); }
            //}
            //catch
            //{
            //    return View();
            //}
        }

        // GET: Employee/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Employee/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Employee/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Employee/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}