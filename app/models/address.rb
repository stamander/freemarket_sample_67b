class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture :way_of_delively :category_id :quality :postage :shipping_date
end