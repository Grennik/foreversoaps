class Users::OrderitemsController < ApplicationController
  before_filter :authenticate_user!


  def create
    @transaction = current_order
    @orderitem = @transaction.orderitems.new(orderitem_params)
    @transaction.save
    session[:transaction_id] = @transaction.id
    redirect_to users_cart_path
  end

  def update
    @transaction = current_order
    @orderitem = @transaction.orderitems.find(params[:id])
    @orderitem.update_attributes(orderitem_params)
    @orderitems = @transaction.orderitems
    redirect_to users_cart_path
  end

  def destroy
    @transaction = current_order
    @orderitem = @transaction.orderitems.find(params[:id])
    @orderitem.destroy
    @orderitems = @transaction.orderitems
    redirect_to users_cart_path
  end

  private
    def orderitem_params
      params.require(:orderitem).permit(:quantity, :price, :total_price, :name, :image, :description)
    end
end
