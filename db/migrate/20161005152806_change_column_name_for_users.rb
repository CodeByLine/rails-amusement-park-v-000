class ChangeColumnNameForUsers < ActiveRecord::Migration
  def change
    rename_column :users, :nausea_rating, :nausea
    rename_column :users, :happiness_rating, :happness
  end
end
