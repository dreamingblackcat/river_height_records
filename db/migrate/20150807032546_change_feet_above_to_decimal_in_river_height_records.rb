class ChangeFeetAboveToDecimalInRiverHeightRecords < ActiveRecord::Migration
  def up
    change_column :river_height_records, :feet_above, :decimal
  end

  def down
    change_column :river_height_records, :feet_above, :integer
  end
end
