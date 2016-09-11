class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = nil
    bFarmer = user_params[:farmer].to_i
    bMerchant = user_params[:merchant].to_i
    if bFarmer == bMerchant
      redirect_to new
    else
      if bFarmer == 1
        @user = Farmer.new(user_params)
      else
        @user = Merchant.new(user_params)
      end
    end
    if @user.save
      redirect_to @user, notice: 'Success'
    else
      render action: 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :name, :farmer, :merchant)
  end

end
