class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.boolean :is_available, default: true
      t.references :main_item, foreign_key: true

      t.timestamps
    end
  end
end
