using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VideoGameReviews.Domain.Entities;

namespace VideoGameReviews.Domain.Repository.Base
{
    public interface IReview
    {
        int Id { get; set; }
        int UserId { get; set; }
        string Title { get; set; }
        string Description { get; set; }

        IQueryable<IReview> All();
    }
}
