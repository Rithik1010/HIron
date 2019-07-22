class PartnersController < ApplicationController
  def create
  end
  
  def show
    get_booking
  end
  
  private
  
  def get_booking
    @partner = Partner.find(params[:id])
    @booking = current_user.bookings.create(user_id: current_user.id, partner_id: params[:id]) if logged_in? 
    #@booking = Booking.create(user_id: current_user.id, partner_id: params[:id])
    #@feedback = Feedback.create(user_id: current_user.id, partner_id: params[:id])
    #redirect_to booking_url
  end
end
