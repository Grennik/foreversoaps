class PageController < ApplicationController


  def index
    @newsmailer = Newsmailer.new
    @orderitem = current_order.orderitems.new
  end

  def products
    @categories = Category.all
    @orderitem = current_order.orderitems.new
  end

  def showproducts
    @category = Category.find(params[:id])
    @items = Item.all
    @orderitem = current_order.orderitems.new
  end

  def showitems
    @category = Category.all
    @item = Item.find(params[:id])
    @user = current_user
    @orderitem = current_order.orderitems.new
    @orderitem.item_id = params[:item_id]
  end

  def terms
  end

  def policy
  end

  def contact
  end

  def about
  end

  def createnewsmailer
    @newsmailer = Newsmailer.new(newsmailer_params)
    if @newsmailer.save
      NewsletterMailer.welcome_email(@newsmailer).deliver_now
      redirect_to root_path
    else
      render "index"
    end
  end




  private
  def newsmailer_params
    params.require(:newsmailer).permit(:email)
  end

end
