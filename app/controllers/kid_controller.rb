class KidController < ApplicationController
  def index
    @kid=Item.all.where(category_id: "4").order(id: :desc).includes(:images)
  end
end
