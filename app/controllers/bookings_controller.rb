class BookingsController < ApplicationController
  
  def new
    @booking = Booking.new
  end
  
  def create
    @booking = Booking.new(param[:id])
    if @booking.save 
      flash[:notice] = "Booked Succesfully"
      #render :index
    else
      flash[:notice] = 'Sorry! Booking was not done'
      #render :new
    end
  end
  
  def index
    @user = current_user
    @bookings = Booking.all
  end
  
  def show
    @booking = Booking.find(params[:id])
  end
  
  def update
    @booking = Booking.find(params[:id])
    if @booking.update_attributes(booking_params)
        # if update is successful
    else 
        # if update is unsuccessful
    end
    redirect_to booking_path
  end
  
  def booking_params
    params.permit(:user_id, :partner_id)
  end
end
