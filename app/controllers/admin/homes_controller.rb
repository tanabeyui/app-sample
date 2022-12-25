class Admin::HomesController < ApplicationController
  def top
    @items = RakutenWebService::Ichiba::Item.ranking
    # @gifts = items.search(:age => 50)
  end
end
