class TopsController < ApplicationController
  #before_action :login, only: [:index]
  before_action :move_to_index, except: [:index]

  def index
  end

  private

  #def logout
    #sign_out current_user if user_signed_in?
  #end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
