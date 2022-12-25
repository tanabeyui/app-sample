class Admin::ItemsController < ApplicationController

  def index
    @items = RakutenWebService::Ichiba::Item.ranking
  end

  def show

  end
  
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to admin_item_path(@review)
    else
      render :new
    end
  end

  def search
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])

    end
  end
  
  
  
  private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :genre_id, :price, :is_active)
  end

end
