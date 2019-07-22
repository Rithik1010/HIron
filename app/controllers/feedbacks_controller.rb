class FeedbacksController < ApplicationController
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
    @feedbacks = current_user.feedbacks.all
  end
  
  def show
    @feedback = Feedback.find(params[:id])
  end
  
  def feedback_params
    params.require(:feedback).permit(:user_id, :partner_id, :content)
  end
end
