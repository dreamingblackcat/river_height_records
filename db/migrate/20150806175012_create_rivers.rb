class CreateRivers < ActiveRecord::Migration
  def change
    create_table :rivers do |t|
      t.string :mm_name
      t.string :en_name

      t.timestamps null: false
    end
  end
end
