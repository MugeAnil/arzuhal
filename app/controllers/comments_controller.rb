class CommentsController < ApplicationController

  http_basic_authenticate_with name: "anil", password: "123456", except: [:index, :show]

  def create
    @user = User.find(params[:user_id])
    @comment = @user.comments.create(comment_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @comment = @user.comments.find(params[:id])
    @comment.destroy
    redirect_to user_path(@user)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
