class EntertainmentController < ApplicationController
  def index
    @entertainment=Item.all.where(category_id: "5").order(id: :desc).includes(:images)
  end
end
