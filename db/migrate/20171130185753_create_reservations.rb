class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :checkin
      t.datetime :chekout
      t.belongs_to :listing, index: true
      t.belongs_to :guest, index: true

      t.timestamps null: false
    end
    add_foreign_key :reservations, :listings
    add_foreign_key :reservations, :guests
  end
end
