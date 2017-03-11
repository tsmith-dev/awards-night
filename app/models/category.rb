class Category < ApplicationRecord
  has_many :awards
  has_many :nominations, through: :awards
end
