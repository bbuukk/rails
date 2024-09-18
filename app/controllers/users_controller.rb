# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    return render :new unless @user.save

    session[:user_id] = @user.id
    redirect_to root_path, notice: 'You have been successfully signed up'
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
