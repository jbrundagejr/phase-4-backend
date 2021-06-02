class UsersController < ApplicationController
  
  # skip_before_action :logged_in?, only: [:create, :login]
  
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)
    render json: {name: user.name, user: user.id, token: encode_token({user_id: user.id})}
  end

  def login
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      render json: {name: user.name, user: user.id, token: encode_token({user_id: user.id})}
    else
      render json: {message: "Name or Password is incorrect."}
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :image_url)
  end

end
