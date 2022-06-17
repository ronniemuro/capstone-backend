class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts.as_json
  end

  def show
    post = Post.find_by(id: params["id"])
    render json: post.as_json
  end

  def create
    post = Post.new(
      user_id: params["user_id"],
      post_content: params["post_content"],
      sign: params["sign"],
    )
    post.save
    render json: post.as_json
  end

  def update
    post_id = params["id"]
    post = Post.find_by(id: post_id)
    post.post_content = params["post_content"] || post.post_content
    post.sign = params["sign"] || post.sign
    post.save
    render json: post.as_json
  end
end
