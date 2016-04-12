class MessagesController < ApplicationController

  before_action :authenticate_user!, :only => [:create]

  def create
    # @message = Message.create(params.require(:message).permit(:user_id, :content).merge(:user_id => current_user.id))
    flash[:alert] = "無効なユーザー"
    redirect_to :back
  end

end
