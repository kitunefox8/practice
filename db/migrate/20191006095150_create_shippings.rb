class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
    t.string :delivery_methood, null: false
    t.date :prefecture_from, null: false
    t.string :preiod, null: false
    t.string :delivery, null: false    
    t.timestamps
    end
  end
end
