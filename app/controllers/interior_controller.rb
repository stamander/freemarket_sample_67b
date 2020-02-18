class InteriorController < ApplicationController
  def index
    @interior=Item.all.where(category_id: "8").order(id: :desc).includes(:images)
  end
end
