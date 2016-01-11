class PageController < ApplicationController

  def index
    @newsmailer = Newsmailer.new
  end

  def products
    @categories = Category.all
    @items = Item.all
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
