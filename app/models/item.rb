class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture, :way_of_delively,:category_id, :quality, :postage, :shipping_date
  belongs_to :furimauser
  has_many :images, dependent: :destroy

  accepts_nested_attributes_for :images, allow_destroy: true
  validates :price,:name,:explain,:size, presence: true

end
