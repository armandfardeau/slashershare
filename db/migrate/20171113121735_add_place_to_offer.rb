class AddPlaceToOffer < ActiveRecord::Migration[5.1]
  def change
    add_column :offers, :place, :string
  end
end
