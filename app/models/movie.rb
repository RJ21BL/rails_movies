class Movie < ApplicationRecord
  #When we save or update records, this is done through mass asignment. 
  #Users may be able to access fields in the table which they are
  #not authorized to. These are protected with strong params in the
  #controller.

  # has_one :genre
  # #Each instance of Movie can fetch 1 Genre but not the opposite.
  belongs_to :director, optional: true
  #Each instance of Movie belongs to 1 instance of Director.
  
  #The Genre table will contain a column which represents
  #a reference to another table.
  belongs_to :genre, optional: true
end
