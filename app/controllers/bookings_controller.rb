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
    @booking.instrument = Instrument.find(params[:instrument])
    @booking.status = "Confirmed"
    @booking.user = current_user
    authorize @booking
    @booking.save
    redirect_to booking_path(@booking)
  end

    def instrument_params
      params.permit(:instrument)
    end
end
