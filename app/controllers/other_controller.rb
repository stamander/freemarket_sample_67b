class OtherController < ApplicationController
  def index
    @other=Item.all.where(category_id: "14").order(id: :desc).includes(:images) 
  end
end
