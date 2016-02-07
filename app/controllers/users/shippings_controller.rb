class Users::ShippingsController < ApplicationController
before_filter :authenticate_user!

  def index

  end

  def new
    @user = current_user
    @shipping = Shipping.new
  end

  def create
    @shipping = Shipping.new(shipping_params)
    if @shipping.save
      redirect_to user_path
    else
      render 'new'
    end
  end

  def edit
    @shipping = Shipping.find(params[:id])
  end

  def destroy
    @shipping = Shipping.find(params[:id])
    @shipping.destroy

    redirect_to user_path
  end

  private
    def shipping_params
      params.require(:shipping).permit(:name, :street_address, :apartment, :state, :zipcode)
    end

end
