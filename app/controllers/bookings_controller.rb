class BookingsController < ApplicationController
  
  def new
    @booking = Booking.new
  end
  
  def create
    @booking = Booking.new(booking_params)
    if @booking.save 
      flash[:success] = "Booked Succesfully"
      redirect_to @booking
    else
      render 'static_pages/home'
      #render :new
    end
  end
  
  def index
    @bookings = current_user.bookings.paginate(page: params[:page])
  end
  
  def show
    @booking = Booking.find(params[:id])
  end
  
  def booking_params
    params.require(:booking).permit(:user_id, :partner_id, :address)
  end
end
