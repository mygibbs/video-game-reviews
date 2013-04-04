using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VideoGameReviews.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Welcome to Matt and Arsenio's Video Game Reviews!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
