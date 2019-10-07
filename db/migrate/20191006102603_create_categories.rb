class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :children_id
      t.integer :grandchildren_id
      t.timestamps
    end
  end
end
