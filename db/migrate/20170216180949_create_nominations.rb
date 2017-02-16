class CreateNominations < ActiveRecord::Migration[5.0]
  def change
    create_table :nominations do |t|
      t.references :show, foreign_key: true
      t.references :category, foreign_key: true
      t.string :nominee

      t.timestamps
    end
  end
end
