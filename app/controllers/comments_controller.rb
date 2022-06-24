class CommentsController < ApplicationController
  before_action :authenticate_user

  def create
    comment = Comment.new(
      post_id: params["post_id"],
      user_id: params["user_id"],
      comment: params["comment"],
    )
    comment.save
    render json: comment.as_json
  end

  def destroy
    comment_id = params["id"]
    comment = Comment.find_by(id: comment_id)
    comment.destroy
    render json: { message: "Comment deleted" }
  end
end
