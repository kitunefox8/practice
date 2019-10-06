class CreateBrandgroups < ActiveRecord::Migration[5.2]
  def change
    create_table :brandgroups do |t|
      t.string :name
      t.timestamps
    end
  end
end
