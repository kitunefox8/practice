class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :brandgroup_id
      t.integer :product_id, foreign_key: true
      t.timestamps
    end
  end
end
