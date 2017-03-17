class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_one :ballot #, -> { where(game_id: @current_game.id) }
  has_many :picks, through: :ballot
  accepts_nested_attributes_for :picks
end
