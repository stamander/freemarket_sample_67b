class SmartphoneController < ApplicationController
  def index
    @smartphone=Item.all.where(category_id: "9").order(id: :desc).includes(:images)
  end
end
