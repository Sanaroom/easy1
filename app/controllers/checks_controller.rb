class ChecksController < ApplicationController
  def index
    @checks=Check.all
  end

  def new
    @check=Check.new
    @default_text = "学校に来たよ！（出席）"
  end

  def create
    Check.create(check_params)
    redirect_to '/'
  end

  def show
    @check = Check.find(params[:id])
  end


  private
  def check_params
    params.require(:check).permit(:number, :attendance)
  end
end
