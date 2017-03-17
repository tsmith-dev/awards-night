class Award < ApplicationRecord
  belongs_to :show
  belongs_to :category
  has_many :nominations
  belongs_to :winner, :class_name => "Nomination", :foreign_key => "winner_id"
end
