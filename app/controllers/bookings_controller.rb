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
      flash[:notice] = "Successfully updated booking!"
      redirect_to bookings_path
    else
      flash[:alert] = "Error udpating booking!"
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    flash[:notice] = "Successfully destroyed booking!"
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:event_start, :event_end, :title, :description, :booker_name, :booker_email, :booker_phonenumber, :accept)
  end

end
