class TopsController < ApplicationController
  before_action :logout, only: [:index]

  def index
  end

  private

  def logout
    sign_out current_user if user_signed_in?
  end
  
end
