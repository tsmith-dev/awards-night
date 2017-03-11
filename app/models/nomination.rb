class Nomination < ApplicationRecord
  belongs_to :award
  has_one :show, through: :award
end
