class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :capital
      t.string :feed
      t.date :s_date
      t.date :e_date
      t.string :s_chick
      t.string :e_chick
      t.integer :gross
      t.integer :trans
      t.integer :labour
      t.integer :other

      t.timestamps
    end
  end
end
