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

end
