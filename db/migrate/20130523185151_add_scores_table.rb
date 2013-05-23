class AddScoresTable < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :final_score
      t.timestamps
    end
  end
end
