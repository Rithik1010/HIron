class FeedbacksController < ApplicationController
  
  before_action :correct_user,   only: :destroy
  
  def new
    @feedback = Feedback.new
  end
  
  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save 
      flash[:success] = "Feedback Noted!"
      @partner = @feedback.partner
      redirect_to @partner
    else
      render 'static_pages/home'
      #render :new
    end
  end
  
  def index
    @feedbacks = current_user.feedbacks.paginate(page: params[:page])
  end
  
  def show
    @feedback = Feedback.find(params[:id])
  end
  
  def destroy
    @feedback.destroy
    flash[:success] = "Review deleted"
    redirect_to request.referrer || root_url
  end

  private
  
    def feedback_params
      params.require(:feedback).permit(:user_id, :partner_id, :content)
    end
  
    def correct_user
      @feedback = current_user.feedbacks.find_by(id: params[:id])
      redirect_to root_url if @feedback.nil?
    end
end
