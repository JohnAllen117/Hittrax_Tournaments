class PersonalMessagesController < ApplicationController
  before_action :find_conversation!

  def new
    redirect_to conversation_path(@conversation) and return if @conversation
    @personal_message = PersonalMessage.new(user_master_id: current_user.MasterID)
    @reciever = User.find_by(MasterID: params[:receiver_id])
  end

  def create
    @reciever = User.find_by(MasterID: params[:receiver_id])
    @conversation = Conversation.find_by(id: params[:personal_message][:conversation_id]) || Conversation.create(author_master_id: current_user.MasterID, receiver_master_id: @receiver.MasterID)
    @personal_message = PersonalMessage.new(user_master_id: current_user.MasterID, body: params[:personal_message][:body])
    @personal_message.conversation_id = @conversation.id
    @personal_message.save!

    flash[:success] = "Your message was sent!"
    redirect_to conversation_path(@conversation)
  end

  private

  def personal_message_params
    params.require(:personal_message).permit(:body)
  end

  def find_conversation!
    if params[:receiver_id]
      @receiver = User.find_by(MasterID: params[:receiver_id])
      redirect_to(root_path) and return unless @receiver
      @conversation = Conversation.find_by(author_master_id: current_user.MasterID, receiver_master_id: @receiver.MasterID) || Conversation.find_by(author_master_id: @receiver.MasterID, receiver_master_id: current_user.MasterID)
    elsif params[:personal_message][:conversation_id]
      @conversation = Conversation.find_by(id: params[:personal_message][:conversation_id])
      redirect_to(conversations_path) and return unless @conversation && @conversation.participates?(current_user)
    else
      flash[:notice] = "User not found."
      redirect_to(conversations_path)
    end
  end
end
