class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit,:update]
  #before_action :authenticate, only: [:edit, :update, :destroy]

  def index
    @comments=Comment.order('created_at DESC')
    @comment=Comment.new
    
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
    comment.destroy
    redirect_to comments_path
  end



  def edit
  end

  def update
    comment=Comment.find(params[:id])
    comment.update(comment_params)
    redirect_to check_path
    
  end

  private

  def comment_params
    params.require(:comment).permit(:board)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  #def authenticate
    #unless params[:password] == comment.password
      #redirect_to root_path, alert: "パスワードが正しくありません"
  #end
end
