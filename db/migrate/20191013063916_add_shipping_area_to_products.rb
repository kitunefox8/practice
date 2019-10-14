class AddShippingAreaToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :shipping_area, :integer
  end
end
