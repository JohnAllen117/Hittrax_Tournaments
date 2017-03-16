class PersonalMessagesController < ApplicationController
  before_action :find_conversation!

  def new
    redirect_to conversation_path(@conversation) and return if @conversation
    @personal_message = PersonalMessage.new(user_master_id: current_user.MasterID)
    @reciever = User.find_by(MasterID: params[:receiver_id])
  end

  def create
    @reciever = User.find_by(MasterID: params[:receiver_id])
    binding.pry
    @conversation ||= Conversation.create(author_master_id: current_user.MasterID, receiver_master_id: @receiver.MasterID)
    @personal_message = current_user.personal_messages.build(personal_message_params)
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
      @receiver = User.find_by(id: params[:receiver_id])
      redirect_to(root_path) and return unless @receiver
      @conversation = Conversation.between(current_user.id, @receiver.id)[0]
    else
      @conversation = Conversation.find_by(id: params[:conversation_id])
      flash[:notice] = "User not found."
      redirect_to(conversations_path) and return unless @conversation && @conversation.participates?(current_user)
    end
  end
end
