class ReviewsController < ApplicationController
  before_action :find_partner
  before_action :find_review, only: [:edit, :update, :destroy]
  
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
      flash.now[:danger] = "You've already reviewed this Service partner!"
      render 'new'
    end
    
  end
  
  def edit
  end
  
  def update
    if @review.update(review_params)
      redirect_to partner_path(@partner)
    else
      render 'edit'
    end
  end
  
  def destroy
    @review.destroy
    redirect_to partner_path(@partner)
  end
  
  private
    
    def review_params
      params.require(:review).permit(:rating, :comment)
    end
    
    def find_partner
      @partner = Partner.find(params[:partner_id])
    end
      
    def find_review
      @review = Review.find(params[:id])
    end
  
end
