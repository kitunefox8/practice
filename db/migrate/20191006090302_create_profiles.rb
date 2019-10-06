class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :first_kana, null: false
      t.string :last_kana, null: false
      t.date :birth_year, null: false
      t.date :birth_month, null: false
      t.date :birth_day, null: false
      t.string :tel
      t.string :zipcode, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.string :district, null: false
      t.string :building



      t.timestamps
    end
  end
end
