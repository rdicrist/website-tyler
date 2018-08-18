class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] = "Successfully asked for event!"
      redirect_to booking_path(@booking)
    else
      flash[:alert] = "Error requesting event!"
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      flash[:notice] = "Successfully updated event!"
      redirect_to bookings_path
    else
      flash[:alert] = "Error udpating event!"
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:event_start, :event_end, :title, :description, :booker_name, :booker_email, :accept)
  end

end
