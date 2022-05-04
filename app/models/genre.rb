class Genre < ApplicationRecord
  belongs_to :movie, optional: true
  #Each instance of Genre belongs to one instance of Movie.
  #The Genre table will contain a column which represents
  #a reference to another table.
  has_and_belongs_to_many :directors
  #Each instance Genre has 0 or more instances of Director.
  has_many :movies
end
