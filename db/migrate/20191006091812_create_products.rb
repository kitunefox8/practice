class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.timestamps
      t.string :name, null: false
      t.string :price, null: false
      t.text :description, null: false
      t.integer :saller_id
    end
  end
end
