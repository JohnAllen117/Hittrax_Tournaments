class ConversationsController < ApplicationController
  before_action :authenticate

  def new
  end

  def create
    recipients = Facility.where(MasterID: conversation_params[:recipients])
    conversation = current_user.facility.send_message(recipients, conversation_params[:body], conversation_params[:subject]).conversation
    flash[:success] = "Your message was successfully sent!"
    redirect_to conversation_path(conversation)
  end

  def show
    @receipts = conversation.receipts_for(current_user.facility)
    # mark conversation as read
    conversation.mark_as_read(current_user.facility)
  end

  def reply
    current_user.facility.reply_to_conversation(conversation, message_params[:body])
    flash[:notice] = "Your reply message was successfully sent!"
    redirect_to conversation_path(conversation)
  end

  private
  def conversation_params
    params.require(:conversation).permit(:subject, :body,recipients:[])
  end
end
