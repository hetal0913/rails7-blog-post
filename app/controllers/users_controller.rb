class UsersController < ApplicationController
  before_action :set_user
  
  def profile
    @user.update(views: @user.views + 1)
  end

  private

  def set_user
    @user = User.where(id: params[:id]).first
  end

end
