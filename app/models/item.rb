class Item < ApplicationRecord

  has_many :image, dependent: :destroy

  accepts_nested_attributes_for :image, allow_destroy: true
end
