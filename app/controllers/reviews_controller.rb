class ReviewsController < ApplicationController
  before_action :find_partner
  
  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(review_params)
    @review.partner_id = @partner.id
    @review.user_id = current_user.id
    
    if(@review.save)
      redirect_to partner_path(@partner)
    else
      render 'new'
    end
  end
  
  private
    
    def review_params
      params.require(:review).permit(:rating, :comment)
    end
    
    def find_partner
      @partner = Partner.find(params[:partner_id])
    end
      
  
end
