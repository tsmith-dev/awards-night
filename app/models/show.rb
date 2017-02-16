class Show < ApplicationRecord
  has_many :nominations
  has_many :categories, through: :nominations
end
