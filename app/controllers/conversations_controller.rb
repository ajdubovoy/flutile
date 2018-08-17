class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = policy_scope(Conversation).where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    # @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    @users = User.where.not(id: current_user.id)
    @bookings = policy_scope(Booking)
  end

  def create
    @conversation = Conversation.new

    @conversation.booking = Booking.find(params[:booking_id])
    @conversation.sender = User.find(params[:sender_id])
    @conversation.receiver = User.find(params[:receiver_id])
    # if Conversation.between(params[:sender_id], params[:receiver_id]).present?
    #   @conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
    #   authorize @conversation
    # else
      # @conversation = Conversation.create!(conversation_params)
      @conversation.save
      authorize @conversation
    # end
    redirect_to conversation_messages_path(@conversation)
  end

   private
    def conversation_params
      params.permit(:sender_id, :receiver_id, :booking_id)
    end
end