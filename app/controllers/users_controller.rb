class UsersController < ApplicationController
  def index
    @users = User.all
    render template: "users/index"
  end

  def show
    @user = User.find_by(id: params["id"])
    render template: "users/show"
  end

  def create
    user = User.new(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      profile_pic: params[:profile_pic],
      sun: params[:sun],
      moon: params[:moon],
      rising: params[:rising],
    )
    if user.save!
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user_id = current_user.id
    user = User.find_by(id: user_id)
    user.name = params["name"] || user.name
    user.username = params["username"] || user.username
    user.email = params["email"] || user.email
    user.profile_pic = params["profile_pic"] || user.profile_pic
    user.sun = params["sun"] || user.sun
    user.moon = params["moon"] || user.moon
    user.rising = params["rising"] || user.rising
    if user.save
      @user = user
      render template: "users/show"
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
