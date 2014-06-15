class ShopsController < ApplicationController

  def index
    @shop = Shop.new
    @shops = Shop.all
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save

      redirect_to shops_path
    else
      render :index
    end
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :specialty)
  end
end