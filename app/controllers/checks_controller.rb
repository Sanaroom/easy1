class ChecksController < ApplicationController
  


  def index
    @checks=Check.all
  end

  def new
    @check=Check.new
    @default_text = "学校に来たよ！（●）"
  end

  def create
    @check=Check.create(check_params)
    if @check.save
    redirect_to check_path(@check)
    end
  end

  def show
    @checks=Check.order('created_at DESC')
    @comments = Comment.order('created_at DESC')
  end

  def destroy
    check=Check.find(params[:id])
    check.destroy
    redirect_to check_path
  end

  def edit
    @check=Check.find(params[:id])
  end

  def update
    check=Check.find(params[:id])
    check.update(check_params)
    redirect_to check_path
  end



  private
  def check_params
    params.require(:check).permit(:number, :attendance)
  end
end
