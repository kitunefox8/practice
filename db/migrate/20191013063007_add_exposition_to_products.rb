class AddExpositionToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :exposition, :text
  end
end
