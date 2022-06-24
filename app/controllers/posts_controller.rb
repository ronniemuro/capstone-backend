class PostsController < ApplicationController
  def index
    @posts = Post.all
    render template: "posts/posts/index"
  end

  def show
    @post = Post.find_by(id: params["id"])
    render template: "posts/posts/show"
  end

  def create
    post = Post.new(
      user_id: params["user_id"],
      post_content: params["post_content"],
      sign: params["sign"],
    )
    if post.save
      @post = post
      render template: "posts/posts/show"
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    post_id = params["id"]
    post = Post.find_by(id: post_id)
    post.post_content = params["post_content"] || post.post_content
    post.sign = params["sign"] || post.sign
    if post.save
      @post = post
      render template: "posts/posts/show"
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    post_id = params["id"]
    post = Post.find_by(id: post_id)
    post.destroy
    render json: { message: "Post deleted successfully!" }
  end
end
