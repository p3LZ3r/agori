class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.new({email: params[:session][:email],
      password: params[:session][:password]})
    type = user.find_type_in_db
    if type != ""
      session[:id] = user.get_username
      redirect_to user_path(id: user.get_username, type: type)
    else
      redirect_back fallback_location: {action: 'new'}
    end
  end

  def destroy
    session[:id] = nil
  end

end
