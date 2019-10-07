class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    t.integer :product_id
    t.integer :trading_id  
    t.timestamps
    end
  end
end
