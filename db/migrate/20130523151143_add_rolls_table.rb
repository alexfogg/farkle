class AddRollsTable < ActiveRecord::Migration
  def change
    create_table :rolls do |t|
        t.integer :points
        t.integer :dice
        t.string :name
        t.integer :turn_id
        t.timestamps
    end
  end
end
