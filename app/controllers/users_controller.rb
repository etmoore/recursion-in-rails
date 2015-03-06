class UsersController < ApplicationController

  def index
    @users = User.where(user_id: nil)
  end

  def show
    @user = User.find(params[:id])
  end

end
