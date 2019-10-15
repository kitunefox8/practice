class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.string :name, null: false
      t.integer :product_id, foreign_key: true
      t.timestamps
    end
  end
end
