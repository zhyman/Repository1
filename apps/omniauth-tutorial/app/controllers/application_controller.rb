class ApplicationController < ActionController::Base
  
def create
  auth_hash = request.env['omniauth.auth']
 
  render :text => auth_hash.inspect
end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
