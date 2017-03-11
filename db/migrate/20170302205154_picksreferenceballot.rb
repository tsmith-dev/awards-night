class Picksreferenceballot < ActiveRecord::Migration[5.0]
  def change
    rename_column :picks, :game_id, :ballot_id
    remove_column :picks, :user_id
  end
end
