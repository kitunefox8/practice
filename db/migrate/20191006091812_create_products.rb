class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.timestamps
      t.string :name, null: false
      t.string :price, null: false
      t.text :description, null: false
      t.text :image
      # t.text :exposition
      t.string :delivery
      t.string :delivery_fee
      t.string :shipping_area
      t.string :shipping_days
      t.integer :saller_id
      t.integer :category_id
      t.integer :status_id
      t.integer :brand_id
    end
  end
end
