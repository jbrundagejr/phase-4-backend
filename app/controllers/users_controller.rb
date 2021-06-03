class UsersController < ApplicationController
  
  # skip_before_action :logged_in?, only: [:create, :login]
  before_action :authorized, only: [:keep_logged_in]
  
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  # Old create action 
  # def create
  #   user = User.create(user_params)
  #   render json: {name: user.name, user: user.id, token: encode_token({user_id: user.id})}
  # end

  def create
    @user = User.create(user_params)
    if @user.valid?
      user_token = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: user_token}
    else
      render json: {error: "Invalid user"}, status: 422
    end
  end

  def login
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      user_token = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: user_token}
      # render json: {name: user.name, user: user.id, token: encode_token({user_id: user.id})}
    else
      render json: {error: "Name or Password is incorrect."}, status: 422
    end
  end

  def keep_logged_in
    user_token = encode_token({user_id: @user.id})
    render json: {user: UserSerializer.new(@user), token: user_token}
  end

  private

  def user_params
    params.permit(:name, :email, :password, :image_url)
  end

end
