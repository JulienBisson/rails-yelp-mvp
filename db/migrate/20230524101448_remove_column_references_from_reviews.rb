class RemoveColumnReferencesFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :restaurant_id, index: true, foreign_key: true
  end
end
