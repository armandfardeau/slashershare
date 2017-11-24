class AddEnterpriseToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :enterprise, :boolean
  end
end
