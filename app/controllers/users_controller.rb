class UsersController < ApplicationController
  def create
    @user = User.create!(params[:user])
    
    redirect_to messages_path(:user_id => @user.id)
  end
end
