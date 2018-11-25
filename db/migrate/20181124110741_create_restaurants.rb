class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :address_1
      t.string :address_2
      t.string :street
      t.string :city
      t.string :zip
      t.string :ph

      t.timestamps
    end
  end
end
