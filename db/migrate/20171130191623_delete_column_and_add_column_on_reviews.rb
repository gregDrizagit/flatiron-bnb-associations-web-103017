class DeleteColumnAndAddColumnOnReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :listing_id
    add_column :reviews, :reservation_id, :integer
  end
end
