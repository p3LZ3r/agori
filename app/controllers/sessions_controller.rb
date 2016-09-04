class SessionsController < ApplicationController

  def new
  end

  def create
    user = Merchant.new({mail: params[:session][:mail],
      password: params[:session][:password]})
    Rails.logger.debug user.getPw
    Rails.logger.debug params[:session][:password]
    if user.find_in_db
      redirect_to user
    else
      redirect_back fallback_location: {action: 'show'}
    end
  end

end
