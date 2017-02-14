class Nominee < ApplicationRecord
  belongs_to :category
  belongs_to :show
end
