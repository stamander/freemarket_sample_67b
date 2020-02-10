class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.references :item, foreign_key: true
      t.string :image1,null: false
      t.string :image2
      t.string :image3
      t.string :image4

      t.timestamps
    end
  end
end
