class CreateAwards < ActiveRecord::Migration[5.0]
  def change
    create_table :awards do |t|
      t.references :show
      t.references :category
      t.integer :winner_id
      t.timestamps
    end
  end
end
