class Nomination < ApplicationRecord
  belongs_to :show
  belongs_to :category
end
