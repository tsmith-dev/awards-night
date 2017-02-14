class Category < ApplicationRecord
  has_many :nominees
  has_many :shows
end
