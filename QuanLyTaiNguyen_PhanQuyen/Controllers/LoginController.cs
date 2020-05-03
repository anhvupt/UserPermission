using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyTaiNguyen_PhanQuyen.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(FormCollection collection)
        {
            //try
            //{
                User user = new User();
                string userName = collection["UserName"];
                string password = collection["Password"];
                user = UserDAO.Check_Login(userName, password);
            if (user != null)
            {
                Session["User"] = user;
                return RedirectToAction("Index", "Home");
            }
            else return View();
            //}
            //catch
            //{
            //    return View();
            //}
        }
        public ActionResult SignUp()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SignUp(FormCollection collection)
        {
            try
            {
                User user = new User();
                user.UserName = collection["UserName"];
                user.Password = collection["Password"];
                if (UserDAO.CountByUserName(user.UserName) > 0) return View();
                UserDAO.Add(user);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
