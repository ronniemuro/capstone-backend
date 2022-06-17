class CommentsController < ApplicationController
  def create
    comment = Comment.new(
      post_id: params["post_id"],
      user_id: params["user_id"],
      comment: params["comment"],
    )
    comment.save
    render json: comment.as_json
  end
end
