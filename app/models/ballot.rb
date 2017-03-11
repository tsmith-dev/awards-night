class Ballot < ApplicationRecord
  has_many :picks
  belongs_to :user
  belongs_to :game
  has_one :show, through: :game
  has_many :awards, through: :show
  
  accepts_nested_attributes_for :picks
end
