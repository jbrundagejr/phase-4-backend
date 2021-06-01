class ApplicationController < ActionController::API
  
  # before_action :logged_in?

  def encode_token(payload)
    JWT.encode(payload, "SECRETWORD")
  end

  def logged_in?
    headers = request.headers["Authorization"]
    token = headers.split(" ")[1]
    begin
      user_id = JWT.decode(token, "SECRETWORD")[0]["user_id"]
      user = User.find(user_id)
    rescue
      user = nil
    end
    unless user
      render json: {error: "Unable to login."}
    end
  end

end
