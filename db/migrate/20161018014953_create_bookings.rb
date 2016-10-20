class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :bike, index: true, foreign_key: true
      t.datetime :begin
      t.datetime :end
      t.text :message
      t.boolean :confirmation

      t.timestamps null: false
    end
  end
end
