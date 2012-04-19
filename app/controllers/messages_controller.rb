class MessagesController < ApplicationController
  def start
  end
  
  def index
    @user = []
    @user = User.find(params[:user_id]) if params[:user_id]
    @messages = Message.find(:all)
  end
  
  def create
    @message = Message.create!(params[:message])
    redirect_to messages_path(:user_id => params[:message][:user_id])
  end
end
