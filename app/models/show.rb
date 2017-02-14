class Show < ApplicationRecord
  has_many :categories
  has_many :nominees
end
