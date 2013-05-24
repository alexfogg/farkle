class AddDiceTable < ActiveRecord::Migration
  def change
    create_table :dice do |t|
      t.integer :value
      t.integer :turn_id
      t.timestamps
    end
  end
end
