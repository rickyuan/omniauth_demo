class SessionsController < ApplicationController
  def index
  end
  
  def create
    current_user = Service.find_by_provider_and_uid(auth['provider'], auth['uid'])
    if current_user
      flash[:notice] = "Login successfully."
      redirect_to root_path
    else
      service = Service.new
    end
  end
  
  private
  
  def auth
    request.env["omniauth.auth"]
  end
  
end
