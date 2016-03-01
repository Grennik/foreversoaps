class UsersController < ApplicationController
  before_filter :authenticate_user!
  protect_from_forgery with: :exception


  def index
    @user = current_user
    @shippings = Shipping.all
  end




end
