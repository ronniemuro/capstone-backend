class LikesController < ApplicationController
  before_action :authenticate_user

  def create
    like = Like.new(
      user_id: current_user.id,
      post_id: params["post_id"],
    )
    like.save
    render json: like.as_json
  end

  def destroy
    like_id = params["id"]
    like = Like.find_by(id: like_id)
    like.destroy
    render json: { message: "Unliked successfully" }
  end
end
