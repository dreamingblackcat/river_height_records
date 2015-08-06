class CreateRiverHeightRecords < ActiveRecord::Migration
  def change
    create_table :river_height_records do |t|
      t.integer :city_id
      t.integer :river_id
      t.datetime :record_time
      t.text :description
      t.integer :feet_above
      t.string :prediction

      t.timestamps null: false
    end
  end
end
