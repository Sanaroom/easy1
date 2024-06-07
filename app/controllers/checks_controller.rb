class ChecksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_time_zone


  def index
    @checks=Check.all
    
  end

  def new
    @check=Check.new
    @available_numbers = Number.all.reject { |s| Check.where(user_id: current_user).pluck(:number_id).include?(s.id) }
  end

  def create
    @check=Check.create(check_params)
    if @check.save
      redirect_to check_path(@check)
    else
      @available_numbers = Number.all.reject{ |s| Check.where(user_id: current_user).pluck(:number_id).include?(s.id) }
    end
  end

  def show
    @checks=Check.order('created_at DESC')
    @comments = Comment.order('created_at DESC')
    @check_count = current_user.checks.count
    @checks = current_user.checks
    @comments = current_user.comments

    
    @attendance_count1 = 0 
    count = current_user.checks.where(attendance_id: 1).count
    @attendance_count1 += count

    @attendance_count2 = 0 
    count = current_user.checks.where(attendance_id: 2).count
    @attendance_count2 += count

    @attendance_count3 = 0 
    count = current_user.checks.where(attendance_id: 3).count
    @attendance_count3 += count


  end

  def destroy
    check=Check.find(params[:id])
    check.destroy
    redirect_to comments_path

    
  end

  def edit
    @check=Check.find(params[:id])
  end

  def update
    @check=Check.find(params[:id])
    check=Check.find(params[:id])
    check.update(check_params)
    redirect_to comments_path
    
  end



  private
  def check_params
    params.require(:check).permit(:user_id,:number_id, :attendance_id).merge(user_id: current_user.id)
  end


  def set_time_zone
    Time.zone = 'Asia/Tokyo'
  end
  
end
