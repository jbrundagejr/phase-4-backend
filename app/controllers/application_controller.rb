class ApplicationController < ActionController::API
  
  # before_action :logged_in?

  # def encode_token(payload)
  #   JWT.encode(payload, "SECRETWORD")
  # end

  # def logged_in?
  #   headers = request.headers["Authorization"]
  #   token = headers.split(" ")[1]
  #   begin
  #     user_id = JWT.decode(token, "SECRETWORD")[0]["user_id"]
  #     @user = User.find(user_id)
  #   rescue
  #     @user = nil
  #   end
  #   unless @user
  #     render json: {error: "Unable to login."}
  #   end
  # end

  before_action :authorized

  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, 'my_s3cr3t')
  end

  def auth_header
    # { Authorization: 'Bearer ' }
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      # token = auth_header.split(' ')[1]
      token = auth_header
      # header: { 'Authorization': 'Bearer ' }
      begin
        JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { error: 'Please log in' }, status: :unauthorized unless logged_in?
  end

end
