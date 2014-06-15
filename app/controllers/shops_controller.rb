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

  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update_attributes!(shop_params)

    redirect_to shops_path
  end

  def destroy
    @shop = Shop.find(params[:id]).delete

    redirect_to shops_path
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :specialty)
  end
end