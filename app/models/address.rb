class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  # belongs_to_active_hash :way_of_delively
  belongs_to_active_hash :category_id
  belongs_to_active_hash :quality
  belongs_to_active_hash :postage
  belongs_to_active_hash :shipping_date
end