class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :trading_id
      t.integer :rating, null: false
      t.timestamps
    end
  end
end
