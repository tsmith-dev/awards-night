class CreateNominees < ActiveRecord::Migration[5.0]
  def change
    create_table :nominees do |t|
      t.string :name
      t.references :category
      t.references :show
      t.timestamps
    end
  end
end
