class Award < ApplicationRecord
  belongs_to :show
  belongs_to :category
  has_many :nominations
end
