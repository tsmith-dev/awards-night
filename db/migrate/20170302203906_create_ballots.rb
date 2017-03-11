class CreateBallots < ActiveRecord::Migration[5.0]
  def change
    create_table :ballots do |t|
      t.references :game
      t.references :user

      t.timestamps
    end
  end
end
