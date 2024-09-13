class SessionsController < ApplicationController
  def new_sign_in
  end

  def new_sign_up
    @user = User.new
  end

  def create_sign_in
    user = User.find_by(email: params[:session][:email])
    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      @errors = ["Invalid email or password. Try again."]
    end
  end

  def sign_out
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out successfully"
  end
end
