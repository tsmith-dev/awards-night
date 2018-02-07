class User < ApplicationRecord
  # require 'encrypter'
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_one :ballot #, -> { where(game_id: @current_game.id) }
  has_many :picks, through: :ballot
  accepts_nested_attributes_for :picks
  
  def total_points
    total_points = 0
    self.picks.each do |p|
      winner = Award.find(p.award.id).winner
      if p.first_pick == winner
        total_points += 3
      elsif p.second_pick == winner
        total_points += 2
      elsif p.third_pick == winner
        total_points += 1
      end
    end
    total_points
  end
  
end
