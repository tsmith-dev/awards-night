class Pick < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :award
  belongs_to :ballot
  belongs_to :first_pick, :class_name => "Nomination", :foreign_key => 'first_pick_id'
  belongs_to :second_pick, :class_name => 'Nomination', :foreign_key => 'second_pick_id'
  belongs_to :third_pick, :class_name => 'Nomination', :foreign_key => 'third_pick_id'
end
