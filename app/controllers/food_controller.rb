class FoodController < ApplicationController
  def index
    @food=Item.all.where(category_id: "11").order(id: :desc).includes(:images)
  end
end
