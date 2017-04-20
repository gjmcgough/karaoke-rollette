class SessionsController < ApplicationController

  def destroy
    session[:user_id] = nil
  end
  private
  def auth_hash
    request.env["omniauth.auth"]
  end
end




