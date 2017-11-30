class ChangeCheckoutOnReservations < ActiveRecord::Migration
  def change
    rename_column :reservations, :chekout, :checkout
  end
end
