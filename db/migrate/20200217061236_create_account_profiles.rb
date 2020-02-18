class CreateAccountProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :account_profiles do |t|
      t.references :furimauser, foreign_key: true
      t.string :first_name,null: false
      t.string :last_name,null: false
      t.string :first_name_kana,null: false
      t.string :last_name_kana,null: false
      t.string :phone_number,null: false
      t.timestamps
    end
  end
end
