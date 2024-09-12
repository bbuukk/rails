# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @user = User.find_by(id: session[:user_id]) if session[:user_id]

    @time = Time.now

    @files = Dir.entries('./')
  end
end
