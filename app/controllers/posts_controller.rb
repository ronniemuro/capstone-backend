class PostsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    user_ids = current_user.leader_ids
    user_ids << current_user.id
    @posts = Post.where(user_id: user_ids)
    # @posts = @posts.filter_by_sign_type(params[:sign_type]) if params[:sign_type].present?
    render template: "posts/index"
  end

  def show
    @post = Post.find_by(id: params["id"])
    render template: "posts/show"
  end

  def create
    post = Post.new(
      user_id: current_user.id,
      post_content: params["post_content"],
      sign_type: params["sign_type"],
      sign: params["sign"],
    )
    if post.save
      @post = post
      render template: "posts/show"
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    post_id = params["id"]
    post = Post.find_by(id: post_id)
    post.post_content = params["post_content"] || post.post_content
    post.sign = params["sign"] || post.sign
    post.sign_type = params["sign_type"] || post.sign_type
    if post.save
      @post = post
      render template: "posts/show"
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
