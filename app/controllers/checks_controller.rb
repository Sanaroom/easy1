class ChecksController < ApplicationController
  def index
    @checks=Check.all
    @comments = Comment.order('created_at DESC')
  end

  def new
    @check=Check.new
    @default_text = "学校に来たよ！（●）"
  end

  def create
    @check=Check.create(check_params)
    redirect_to '/'
  end

  def show
    @checks=Check.all
   
    
  end


  private
  def check_params
    params.require(:check).permit(:number, :attendance)
  end
end
