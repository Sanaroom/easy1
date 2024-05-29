class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit,:update]
  #before_action :authenticate, only: [:index,:create,:edit, :update, :destroy]
  before_action :set_id

  

  def index
    @comments=Comment.order('created_at DESC')
    @comment=Comment.new
    @comments = current_user.comments
    @checks = current_user.checks.order(:number_id)
    @check_count =current_user.checks.count
    

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
 

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to comments_path, notice: "コメントが投稿されました"
    else
      @comments = Comment.all
      render :index
    end
  end


  def destroy
    comment = Comment.find(params[:id])

    if comment.destroy
      redirect_to comments_path
    end

    @checks = Check.find(params[:check_id])
    if @checks.destroy
      redirect_to comments_path
    end
  end



  def edit
  end

  def update
    comment=Comment.find(params[:id])
    comment.update(comment_params)
    redirect_to comments_path
    
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id,:board).merge(user_id: current_user.id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_id
    @checks = current_user.checks
    @comments = current_user.comments
  end
 
  
end
