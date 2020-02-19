class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name,null: false
      t.integer :price,null: false
      t.integer :category_id,null: false
      t.integer :brand_id

      t.text    :explain,null: false
      t.integer :postage,null: false
      t.string :region,null: false
      t.string :shipping_date,null: false

      t.text :explain,null: false
      t.integer :postage_id,null: false
      t.integer :region_id,null: false
      t.integer :shipping_date_id,null: false

      t.string :size,null: false
      t.integer :way_of_delivery_id,null: false
      t.integer :quality_id,null: false
      t.string :SaleStatu,null:false
      t.references :furimauser, foreign_key: true
      t.integer :buyer_id
      t.integer :saler_id,null: false
      
      t.timestamps
    end
  end
end
