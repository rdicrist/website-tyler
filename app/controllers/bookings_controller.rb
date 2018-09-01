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
    respond_to do |format|
      
      if @booking.save
        format.html {redirect_to @booking, success: 'Successfully asked for booking!'}
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end

    end
  end

  def update
    @booking = Booking.find(params[:id])

    respond_to do |format|

      if @booking.update(booking_params)
        format.html {redirect_to @booking, info: 'Successfully updated booking!'}
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :edit}
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end

    end

  end

  def destroy
    @booking = Booking.find(params[:id])
  respond_to do |format|
    format.html { redirect_to bookings_url, danger: 'Booking was successfully destroyed.' }
    format.json { head :no_content }
  end
  end

  private

  def booking_params
    params.require(:booking).permit(:event_start, :event_end, :title, :description, :booker_name, :booker_email, :booker_phonenumber, :accept)
  end

end
