class LikesController < ApplicationController
  def create
    like = Like.new(
      user_id: params["user_id"],
      post_id: params["post_id"],
    )
    like.save
    render json: like.as_json
  end
end
