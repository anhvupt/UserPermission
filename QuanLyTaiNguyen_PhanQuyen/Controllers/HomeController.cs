using DataAccess;
using QuanLyTaiNguyen_PhanQuyen.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyTaiNguyen_PhanQuyen.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            User user = Session["User"] as User;
            UserFacade facade = new UserFacade(user);
            facade.Start();
            return View(facade);
        }
    }
}