class CreatePicks < ActiveRecord::Migration[5.0]
  def change
    create_table :picks do |t|
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true
      t.references :show_category, foreign_key: true
      t.integer :first_pick
      t.integer :second_pick
      t.integer :third_pick

      t.timestamps
    end
  end
end
