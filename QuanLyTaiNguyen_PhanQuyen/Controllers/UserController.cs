using DataAccess;
using QuanLyTaiNguyen_PhanQuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyTaiNguyen_PhanQuyen.Controllers
{
    public class UserController : Controller
    {
        // GET: UserInfo
        public ActionResult Index()
        {
            List<UserManagement> model = InitModel();
            return View(model);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        List<UserManagement> InitModel()
        {
            List<UserManagement> result = new List<UserManagement>();
            //load toan bo group tu database
            List<User> users = UserDAO.GetAll();
            foreach (User user in users)
            {
                //gan tung group cho thuoc tinh group cua model
                UserManagement userManagement = new UserManagement();
                userManagement.User = user;
                userManagement.GetListGroupByUserID(user.UserID);
                result.Add(userManagement);
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

            return View();
        }
        // GET: Employee/Create
        public ActionResult AddGroups(int id)
        {
            UserGroup userGroup = new UserGroup();
            userGroup.UserID = id;
            return View(userGroup);
        }

        // POST: Employee/Create
        [HttpPost]
        public ActionResult AddGroups(int id, FormCollection collection)
        {
            //try
            //{
            // TODO: Add insert logic here
            UserGroup userGroup = new UserGroup();
            userGroup.UserID = Convert.ToInt32(collection["UserID"]);
            userGroup.GroupID = Convert.ToInt32(collection["GroupID"]);
            int rs = UserGroupDAO.Add(userGroup);
            if (rs > 0) { return RedirectToAction("Index"); }
            else { return View(); }
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