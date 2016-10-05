class AddDefaultValueToColumn < ActiveRecord::Migration
  def change
    change_column :users, :role, :boolean, :default => false
  end
end
