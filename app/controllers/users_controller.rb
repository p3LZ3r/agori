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
      p "TESTI"
      redirect_to action: 'created_user'
    else
      render action: 'new'
    end
  end

  def show
    p "TEST"
    p params
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

  def created_user
  end

  def farmer_account
    @currentProducts = OfferedProduct.all
    if @currentProducts == nil
      @currentProducts = Product.new
    end
    @user = Farmer.find_by(username: params[:id])
    @products = Product.new
  end

  def merchant_account
    @user = Merchant.find_by(username: params[:id])
    @searchedProduct = Product.new
  end

  def save_farmer_product
    information = {username: params[:id],
      product: params[:product][:hierarchy3], price: params[:product][:price],
      amount: params[:product][:amount]}
    @product = OfferedProduct.new(information)
    @product.save
    redirect_to action: 'farmer_account', id: params['id']
  end

  def user_params
    params.require(:user).permit(:email, :password, :name, :username, :type)
  end

end
