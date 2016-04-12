class RoomsController < ApplicationController

  before_action :authenticate_user!, :only => [:create, :show, :index, :edit, :update]

  def create
    # @room = Room.create(:name => "新規チャット")

    # room = params[:room]

    # @entry1 = Entry.create(:room_id => @room.id, :user_id => current_user.id)
    # @entry2 = Entry.create(:room_id => @room.id, :user_id => room[:receiver])

    # redirect_to "/rooms/#{@room.id}"

    flash[:alert] = "無効なユーザー"
    redirect_to :back

  end

  def show

    @room = Room.find(params[:id])

    @messages = Message.all
    @message = Message.new

    if @room.name? || @room.explain?
    else
      flash[:alert] = "チャット情報が入力されていません"
    end

  end

  def index
    @entries = current_user.entries
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    # @room.update(params.require(:room).permit(:name, :explain))
    # flash[:notice] = "チャット情報が変更されました"

    flash[:alert] = "無効なユーザー"
    redirect_to :back
  end

end
