class AddGamesTable < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :num_rounds
      t.integer :game_points
    end
  end
end
