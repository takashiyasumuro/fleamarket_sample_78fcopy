class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new 
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to new_item_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :introduction, :price, :category, :seller, :buyer, :condition, :postage_payer, :prefecture, :standby_day).merge(seller: current_user.id)
  end


end
