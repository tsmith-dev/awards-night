class Nomination < ApplicationRecord
  belongs_to :award
  has_one :show, through: :award
  # has_many :picks, :class_name => "Pick", :foreign_key => "first_pick"
  # has_many :picks, :class_name => "Pick", :foreign_key => "second_pick"
  # has_many :picks, :class_name => "Pick", :foreign_key => "third_pick"
end
