class AddDiceTable < ActiveRecord::Migration
  def change
    create_table :dice do |t|
      t.integer :value
      t.integer :roll_id
      t.timestamps
    end
  end
end
