class CosmeController < ApplicationController
  def index
    @cosme=Item.all.where(category_id: "3").order(id: :desc).includes(:images)
  end
end
