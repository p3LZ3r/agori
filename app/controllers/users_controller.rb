class UsersController < ApplicationController
  def new
    @user = User.new
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
      redirect_to @user, notice: 'Success'
    else
      render action: 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :name, :type)
  end

end
