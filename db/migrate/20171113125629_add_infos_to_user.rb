class AddInfosToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :age, :integer
  end
end
