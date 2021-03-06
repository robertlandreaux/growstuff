class ChangePlantPartToPlantPartId < ActiveRecord::Migration
  def up
    remove_column :harvests, :plant_part
    add_column :harvests, :plant_part_id, :integer
  end

  def down
    remove_column :harvests, :plant_part_id
    add_column :harvests, :plant_part, :string
  end
end
