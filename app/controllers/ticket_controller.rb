class TicketController < ApplicationController
  def index
    @ticket=Item.all.where(category_id: "7").order(id: :desc).includes(:images)
  end
end
