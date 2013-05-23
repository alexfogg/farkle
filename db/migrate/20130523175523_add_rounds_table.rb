class AddRoundsTable < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :game_id
      t.integer :num_turns
      t.integer :round_points
      t.timestamps
    end
  end
end
