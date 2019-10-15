class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :name
      t.timestamps
      t.integer :product_id
    end
  end
end
