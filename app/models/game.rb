class Game < ApplicationRecord
  validates :name, presence: true
  belongs_to :show
  has_many :awards, through: :show
end
