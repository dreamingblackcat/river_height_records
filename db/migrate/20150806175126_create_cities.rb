class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :mm_name
      t.string :en_name
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
