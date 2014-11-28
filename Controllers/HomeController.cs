using Microsoft.AspNet.Mvc;

namespace MvcSample.Web
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            ViewBag.Title = "Awesome Site - 11/29";

            return View();
        }
    }
}