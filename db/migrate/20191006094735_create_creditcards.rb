class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.string :credit_namber, null: false

      t.timestamps
    end
  end
end
