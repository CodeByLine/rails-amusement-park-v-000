class RemoveColumbnFromAttractions < ActiveRecord::Migration
  def change
    remove_column :attractions, :user_id
    remove_column :attractions, :ride_id
  end
end
