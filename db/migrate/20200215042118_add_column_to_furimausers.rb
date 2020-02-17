class AddColumnToFurimausers < ActiveRecord::Migration[5.0]
  def change
    add_column :furimausers, :nuckName, :string
  end
end
