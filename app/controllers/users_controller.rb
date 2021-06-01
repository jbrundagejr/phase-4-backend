class UsersController < ApplicationController
  
  # skip_before_action :logged_in?, only: [:create, :login]
  
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(user_params)
    render json: user
    # if user.valid?
    #   user.save
    #   render json: user
    # else
    #   render json: {error: "Unable to create user."}
    # end
  end

  def login
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      render json: {name: user.name, token: encode_token({user_id: user.id})}
    else
      render json: {message: "Name or Password is incorrect."}
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :image_url)
  end

end
