using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VideoGameReviews.Domain.Repository.Base;

namespace VideoGameReviews.Web.Controllers
{
    public class ReviewController : Controller
    {
        private IReview repository;

        public ReviewController(IReview reviewRepository)
        {
            repository = reviewRepository;
        }

        //
        // GET: /Review/

        public ActionResult List()
        {
            return View(repository.All());
        }

    }
}
