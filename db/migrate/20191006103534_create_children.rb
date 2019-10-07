class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
    t.string :name, null: false
    t.integer :grandchildren_id
    t.timestamps
    end
  end
end
