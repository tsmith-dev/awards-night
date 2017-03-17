class CreatePicks < ActiveRecord::Migration[5.0]
  def change
    create_table :picks do |t|
      t.references :ballot, foreign_key: true
      t.references :award, foreign_key: true
      t.integer :first_pick_id
      t.integer :second_pick_id
      t.integer :third_pick_id
      t.timestamps
    end
  end
end
