class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.new({email: params[:session][:email],
      password: params[:session][:password]})
    if user.find_in_db
      session[:id] = user.get_email
      p "TEST"
      p session[:id]
      redirect_to user
    else
      redirect_back fallback_location: {action: 'new'}
    end
  end

  def destroy
    session[:id] = nil
  end

  def current_session
    @user = User.find_by(email: session[:id])
  end

end
