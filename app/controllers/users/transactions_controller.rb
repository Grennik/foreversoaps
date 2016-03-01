class Users::TransactionsController < ApplicationController
  before_filter :authenticate_user!


  def index
    @user = current_user
    @orderitems = current_order.orderitems
  end


end
