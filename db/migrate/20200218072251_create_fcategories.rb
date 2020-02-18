class CreateFcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :fcategories do |t|
      t.text :name
      t.timestamps
    end
  end
end
