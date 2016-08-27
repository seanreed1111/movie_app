class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :studio_id, index: true, foreign_key: true
      t.integer :director_id, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
