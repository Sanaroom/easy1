class ChecksController < ApplicationController
  


  def index
    @checks=Check.all
  end

  def new
    @check=Check.new
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
    @check_count = Check.count

    @attendance_count = 0 # 初期化
    count = Check.where(attendance_id: 1).count
    # 合計にカウントした数を加える
    @attendance_count += count
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
    if check.update(check_params)
      redirect_to check_path
    end
  end



  private
  def check_params
    params.require(:check).permit(:user_id,:number_id, :attendance_id).merge(user_id: current_user.id)
  end
end
