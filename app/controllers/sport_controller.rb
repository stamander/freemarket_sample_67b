class SportController < ApplicationController
  def index
    @sport=Item.all.where(category_id: "12").order(id: :desc).includes(:images)
  end
end
