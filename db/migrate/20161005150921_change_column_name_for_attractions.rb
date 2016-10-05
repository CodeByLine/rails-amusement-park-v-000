class ChangeColumnNameForAttractions < ActiveRecord::Migration
  def change
    rename_column :attractions, :height, :min_height
  end
end
