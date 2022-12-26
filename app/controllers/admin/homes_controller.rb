class Admin::HomesController < ApplicationController

  def top
    @items = RakutenWebService::Ichiba::Item.ranking.page(@i)
  end

end
