class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = policy_scope(Conversation).where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    # @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    @users = User.where.not(id: current_user.id)
    @bookings = policy_scope(Booking)
  end

  def create
  #  @booking = Booking.find(params[:booking_id])
  #  @conversation = Conversation.where("booking_id = ?", @booking.id)
   if @conversation.nil?
    @conversation = Conversation.new
    @conversation.booking = Booking.find(params[:booking_id])
    @conversation.sender = User.find(params[:sender_id])
    @conversation.receiver = User.find(params[:receiver_id])
    @conversation = Conversation.create!(conversation_params)
    @conversation.save
   else
      @conversation = Conversation.where("booking_id = ?", @booking_id)
   end
      authorize @conversation
    redirect_to conversation_messages_path(@conversation)
  end

   private
    def conversation_params
      params.permit(:sender_id, :receiver_id, :booking_id)
    end
end