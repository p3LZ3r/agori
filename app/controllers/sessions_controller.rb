class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.new({email: params[:session][:email],
      password: params[:session][:password]})
    type = user.find_type_in_db
    if type != ""
      if type == "merchant"
        user = Merchant.new({email: params[:session][:email],
          password: params[:session][:password]})
      else
        user = Farmer.new({email: params[:session][:email],
          password: params[:session][:password]})
      end
      session[:type] = user.get_type
      session[:id] = user.get_email
      redirect_to '/account'
    else
      redirect_back fallback_location: {action: 'new'}
    end
  end

  def destroy
    session[:id] = nil
    session[:type] = nil
  end

  def current_session
    @user = User.find_by(email: session[:id])
  end

  def account_overview
    if session[:id] == nil || session[:type] == ""
      redirect_to '/login'
    end
    if session[:type] == "farmer"
      @user = Farmer.find_by(email: session[:id])
    elsif session[:type] == "merchant"
      @user = Merchant.find_by(email: session[:id])
    end
  end

end
