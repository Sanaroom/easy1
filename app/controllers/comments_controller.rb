class CommentsController < ApplicationController

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

  

  private

  def comment_params
    params.require(:comment).permit(:board)
  end

end
