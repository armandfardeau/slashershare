class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.date :published_on

      t.timestamps
      t.belongs_to :user, index: true
    end
  end
end
