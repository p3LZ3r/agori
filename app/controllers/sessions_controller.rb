class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.new({email: params[:session][:email],
      password: params[:session][:password]})
    type = user.find_in_db
    if type != ""
      if type == "merchant"
        user = Merchant.new({email: params[:session][:email],
          password: params[:session][:password]})
      else
        user = Farmer.new({email: params[:session][:email],
          password: params[:session][:password]})
      end
      session[:id] = user.get_email
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
