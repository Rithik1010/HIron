class BookingsController < ApplicationController
  def create
    @booking = booking.new(booking_params)
    if @booking.save
      flash[:success] = "Service Booked!"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def show
  end
end
