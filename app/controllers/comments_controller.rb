class CommentsController < ApplicationController
  before_action :authenticate_user

  def create
    comment = Comment.new(
      post_id: params["post_id"],
      user_id: current_user.id,
      comment: params["comment"],
    )
    if comment.save
      @comment = comment
      render template: "comments/show"
    else
      render json: { errors: comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    comment_id = params["id"]
    comment = Comment.find_by(id: comment_id)
    comment.destroy
    render json: { message: "Comment deleted" }
  end
end
