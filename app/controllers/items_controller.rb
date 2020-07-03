class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new 
    @item.item_images.build
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
    params.require(:item).permit(:name, :introduction, :price, :category, :seller, :buyer, :condition, :postage_payer, :prefecture, :standby_day, item_images_attributes: [:image_url]).merge(seller: current_user.id)
    # , [item_images_attributes: [:image_url]]
    # , {item_images_attributes: [:image_url]}
    # , item_images_attributes: [:image_url]
  end


end
