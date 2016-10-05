class RenameTableAttraction < ActiveRecord::Migration
  def change
      rename_table :attractins, :attractions
  end
end
