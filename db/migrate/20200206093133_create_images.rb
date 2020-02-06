class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.references :item, foreign_key: true
      t.text :image1,null: false
      t.text :image2,null: false
      t.text :image3,null: false
      t.text :image4,null: false
      t.timestamps
    end
  end
end
