class CreateSnscredentials < ActiveRecord::Migration[5.2]
  def change
    create_table :snscredentials do |t|
      t.integer :user_id
      t.string :provider
      t.timestamps
    end
  end
end
