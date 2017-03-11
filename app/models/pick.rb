class Pick < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :award
  belongs_to :ballot
end
