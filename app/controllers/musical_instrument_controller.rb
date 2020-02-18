class MusicalInstrumentController < ApplicationController
  def index
    @musical_instrument=Item.all.where(category_id: "6").order(id: :desc).includes(:images)
  end
end
