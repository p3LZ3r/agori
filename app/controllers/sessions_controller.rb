class SessionsController < ApplicationController

  def new
  end

  def create
    user = Merchant.new({mail: params[:session][:mail],
      password: params[:session][:password]})
    if user.find_in_db
      session[:id] = user.get_mail
      redirect_to user
    else
      redirect_back fallback_location: {action: 'new'}
    end
  end

  def destroy
    sign_out
  end

  def current_session
    @user = Merchant.find_by(mail: session[:id])
  end

end
