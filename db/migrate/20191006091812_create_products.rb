class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.timestamps
      t.string :name, null: false
      t.string :price, null: false
      t.text :description, null: false
      t.text :exposition
      t.integer :category
      t.integer :delivery_fee
      t.integer :shipping_area
      t.integer :shipping_days
      t.integer :saller_id
      t.integer :category_id
    end
  end
end
