class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = @room.bookings.new(booking_params)
    if @booking.save!
      redirect_to room_path(@room), notice: 'Room reserved successfully!'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
