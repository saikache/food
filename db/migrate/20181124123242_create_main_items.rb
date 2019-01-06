class CreateMainItems < ActiveRecord::Migration[5.0]
  def change
    create_table :main_items do |t|
      t.string :name
      t.text :description
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
