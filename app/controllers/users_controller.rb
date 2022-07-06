class UsersController < ApplicationController
  def show
    user = User.find_by(id: params["id"])
    render json: user.as_json
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
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
