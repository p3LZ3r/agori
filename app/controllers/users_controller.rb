class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new({})
  end

  def create
    if params[:farmer] == params[:merchant]
      redirect_to new
    end
    @user = nil
    if params[:farmer].to_i == 1
      @user = Farmer.new(user_params)
    elsif params[:merchant].to_i == 1
      @user = Merchant.new(user_params)
    else
      redirect_to new
    end
    if @user.save
      redirect_to @user
    else
      render action: 'new'
    end
  end

  def show
    @user = nil
    if params[:type] == nil
      @user = User.find_by(id: params[:id])
    else
      if params[:type] == "Farmer"
        redirect_to action:"farmer_account", id: params[:id]
      elsif params[:type] == "Merchant"
        redirect_to action:"merchant_account", id: params[:id]
        @user = Merchant.find_by(username: params[:id])
      else
        redirect_back fallback_location: {action:create}
      end
    end
  end

  def farmer_account
    @products = Product.new
  end

  def merchant_account

  end

  def save_farmer_product
    redirect_to action: 'farmer_account'
  end

  def user_params
    params.require(:user).permit(:email, :password, :name, :username, :type)
  end

end
