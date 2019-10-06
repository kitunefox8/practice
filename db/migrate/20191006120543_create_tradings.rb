class CreateTradings < ActiveRecord::Migration[5.2]
  def change
    create_table :tradings do |t|
      t.integer :seller_id
      t.timestamps
    end
  end
end
