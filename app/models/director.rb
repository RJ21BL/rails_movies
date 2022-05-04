class Director < ApplicationRecord
  has_many :movies
  # #Each instance of Director has 0 or more instances of Movie.
  has_and_belongs_to_many :genres
  #Each instance Director has 0 or more instances of Genre.
end
