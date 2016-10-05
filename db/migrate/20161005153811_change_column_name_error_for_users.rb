class ChangeColumnNameErrorForUsers < ActiveRecord::Migration
  def change
    rename_column :users, :happness, :happiness
  end
end
