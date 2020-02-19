class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :region
  belongs_to_active_hash :way_of_delivery
  belongs_to_active_hash :category
  belongs_to_active_hash :quality
  belongs_to_active_hash :postage
  belongs_to_active_hash :shipping_date
  belongs_to :buyer,class_name:"User",optional: true
  belongs_to :furimauser
  has_many :images, dependent: :destroy

  accepts_nested_attributes_for :images, allow_destroy: true
  validates :price,:name,:explain,:size, presence: true
  
end
