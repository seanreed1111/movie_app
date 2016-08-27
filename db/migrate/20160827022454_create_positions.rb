class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.references :movie, index: true, foreign_key: true
      t.string :cast_and_crew_type
      t.integer :cast_and_crew_id      
      t.timestamps null: false
    end
    add_index :positions,[:movie_id, :cast_and_crew_id, :cast_and_crew_type], unique: true, name: "movie_cast_and_crew_positions_index"
  end
end
