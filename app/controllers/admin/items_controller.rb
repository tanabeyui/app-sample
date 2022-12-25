class Admin::ItemsController < ApplicationController

  def index
    @items = RakutenWebService::Ichiba::Item.ranking
    if params[:keyword]
      @search_items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
  end

  def show
    @review = Review.new
    @item_reviews = Review.where(item_code: params[:code]).all
  end

  def new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to admin_items_path
    else
      render :new
    end
  end

  def search
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
  end

  def review
    @reviews = Review.all
  end



  private

  def review_params
    params.require(:review).permit(:end_user_id, :body, :item_name, :item_image, :item_code, :item_shop, :item_price)
  end

end
