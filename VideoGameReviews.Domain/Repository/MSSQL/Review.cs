using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VideoGameReviews.Domain.Repository.Base;
using db = VideoGameReviews.Domain.Entities;

namespace VideoGameReviews.Domain.Repository.MSSQL
{
    public class Review : IReview
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }

        public IQueryable<IReview> All()
        {
            IQueryable<IReview> all = null;
            var conn = new db.VideoGameReviewsDBEntities();
            try
            {
                all = (
                    from r in conn.Reviews
                    select new Review
                    {
                        Id = r.Id,
                        UserId = r.UserId,
                        Title = r.Title,
                        Description = r.Description
                    }
                );
            }
            catch
            {
                conn.Dispose();
            }
            return all;
        }
    }
}
