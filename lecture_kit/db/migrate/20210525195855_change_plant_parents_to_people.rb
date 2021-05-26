class ChangePlantParentsToPeople < ActiveRecord::Migration[5.2]
  def change
    rename_table :plant_parent, :people
  end
end
