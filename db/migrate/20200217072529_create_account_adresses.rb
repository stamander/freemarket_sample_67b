class CreateAccountAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :account_adresses do |t|
      t.references :furimauser, foreign_key: true
      t.string :post_number,null: false
      t.string :prefecture,null: false
      t.string :city,null: false
      t.string :town,null: false
      t.string :building
      t.timestamps
    end
  end
end
