class Admin::ItemsController < ApplicationController
  before_filter :authenticate_admin!
  layout "admin"


  def new
    @item = Item.new
    @item.category_id = params[:category_id]
    @categories = Category.all
  end

  def show
    @item = Item.find(params[:id])
    @categories = Category.all
  end

  def edit
    @item = Item.find(params[:id])
    @categories = Category.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_category_path(@item.category_id)
    else
      render 'new'
    end
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to admin_category_path(@item.category_id)
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to admin_category_path(@item.category_id)
  end

  private
    def item_params
      params.require(:item).permit(:name, :description, :price, :discount_price, :stock, :in_stock, :sub_category, :image, :category_id, :item_ID)
    end
end
