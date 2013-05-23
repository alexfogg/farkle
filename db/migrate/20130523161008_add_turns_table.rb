class AddTurnsTable < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.integer :round_id
      t.integer :turn_points
      t.integer :num_rolls
      t.timestamps
    end
  end
end
