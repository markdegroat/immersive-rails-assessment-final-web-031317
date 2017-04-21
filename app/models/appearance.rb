class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  #for feature 3
  belongs_to :user

  #feature 2
  validates_inclusion_of :rating, in: 0..5

end
