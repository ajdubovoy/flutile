class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).where("user_id = ?", current_user.id)
    # @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
  end

  def show 
    @booking = Booking.find(params[:id])
    @user = User.find(@booking.user_id)
    @instrument = @booking.instrument
    authorize @booking
    authorize @user
    authorize @instrument
  end


  def create
    @booking = Booking.new
    @booking.instrument = Instrument.find(instrument_params[:instrument_id])
    @booking.start_date = Date.new(date_params["start_date(1i)"].to_i, date_params["start_date(2i)"].to_i, date_params["start_date(3i)"].to_i)
    @booking.end_date = Date.new(date_params["end_date(1i)"].to_i, date_params["end_date(2i)"].to_i, date_params["end_date(3i)"].to_i)
    @booking.status = "Pending"
    @booking.user = current_user
    authorize @booking
    @booking.save
    redirect_to booking_path(@booking)
  end

   private
    def date_params
      params.require(:booking).permit("start_date(1i)", "start_date(2i)", "start_date(3i)", "end_date(1i)", "end_date(2i)", "end_date(3i)")
    end

    def instrument_params
      params.permit(:instrument_id)
    end
end
