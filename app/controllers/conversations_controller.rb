class ConversationsController < ApplicationController
  before_action :authenticate
  before_action :set_conversation, except: [:index]
  before_action :check_participating!, except: [:index]

  def index
    @users = []
    Facility.all.where(OptedIn: 1).each do |facility|
      facility.admins.each do |admin|
        @users << admin unless current_user.MasterID == admin.MasterID
      end
    end
    @conversations = Conversation.where("author_master_id = ? OR receiver_master_id = ?",
      current_user.MasterID, current_user.MasterID)
  end

  def messages
    @conversations = Conversation.participating(current_user).order('updated_at DESC')
  end

  def show
    @personal_message = PersonalMessage.new
  end

  private
  def set_conversation
    @conversation = Conversation.find_by(id: params[:id])
  end

  def check_participating!
    redirect_to root_path unless @conversation && @conversation.participates?(current_user)
  end
end
