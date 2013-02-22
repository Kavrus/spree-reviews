class Admin::FeedbackReviewsController <  Admin::ResourceController
  belongs_to :review

  def index
    @review = Spree::Review.find(params[:review_id])
    @collection = @review.feedback_reviews
  end
end
