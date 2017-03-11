class Show < ApplicationRecord
  has_many :awards
  has_many :categories, through: :awards
  has_many :nominations, through: :awards
  
  def nominees
    nominees = []
    self.nominations.each do |nom|
      nominees << nom.nominee
    end
    return nominees
  end
end
