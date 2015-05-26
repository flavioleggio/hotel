class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :surname
      t.boolean :suite
      t.date :date_in
      t.date :date_out
      t.integer :hosts

      t.timestamps null: false
    end
  end
end
