class SessionsController < ApplicationController

  def new
  end

  def create
    merchant = Merchant.new({mail: params[:session][:mail], password: params[:session][:password]})
  end

end
