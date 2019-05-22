class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :category_id)
  end

  def set_user
    @user = current_user
  end
end

