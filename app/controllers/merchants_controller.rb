class MerchantsController < ApplicationController
  def new
    @merchant = Merchant.new
  end

  def create
    @merchant = Merchant.new(merchant_params)
    if @merchant.save
      redirect_to @merchant, notice: 'Success'
    else
      render action: 'new'
    end
  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def merchant_params
    params.require(:merchant).permit(:mail, :password, :name, :surname)
  end

end
