# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path, notice: "You have been successfully signed up"
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  def log_out
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out successfully"
  end

  def log_in
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path, notice: "Logged in successfully"
    else
      flash[:alert] = "Invalid email or password. Try again"
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
