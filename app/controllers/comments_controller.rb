class CommentsController < ApplicationController
  def create
    @user = current_user
    @decision = Decision.find(params[:decision_id])
    @comment = @decision.comments.build(body: params[:comment][:body], user_id: current_user, decision_id: params[:id])
    # @comment.update_attributes(user_id: current_user)
    if @comment.save
      redirect_to [@decision.user, @decision]
    end
  end

  def show
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
