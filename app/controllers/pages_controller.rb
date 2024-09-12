# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
