class MenController < ApplicationController
  def index
    @men=Item.all.where(category_id: "2").order(id: :desc).includes(:images)
  end
end
