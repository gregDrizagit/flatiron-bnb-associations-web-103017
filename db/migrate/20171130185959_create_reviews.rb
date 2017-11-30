class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.belongs_to :listing, index: true
      t.belongs_to :guest, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :listings
    add_foreign_key :reviews, :guests
  end
end
