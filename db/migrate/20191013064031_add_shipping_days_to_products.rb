class AddShippingDaysToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :shipping_days, :integer
  end
end
