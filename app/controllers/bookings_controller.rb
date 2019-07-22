class BookingsController < ApplicationController
  
  def new
    @booking = Booking.new
  end
  
  def create
    @booking = current_user.bookings.create(booking_params)
    if @booking.save 
      flash[:success] = "Booked Succesfully"
      redirect_to booking_url
    else
      render 'static_pages/home'
      #render :new
    end
  end
  
  def index
    @user = current_user
    @bookings = current_user.bookings.all
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
