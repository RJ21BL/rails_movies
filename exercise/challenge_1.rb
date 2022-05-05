load File.expand_path("setup.rb", __dir__)

# Task 1:
# can you write a method that
# take "genre" as an String input
# and it returns the most recent movie name

def recent_movie_of_genre(genre)
  #
  # fill me
  #
end
puts title("Task 1")
puts recent_movie_of_genre('Crime/Thriller') == 'Inside Man' ? right : wrong

# Task 2:
# now return an error message when the provied genre does not yield any movie
# e.g. "sorry please try with different genre"

def recent_movie_of_genre(genre)
  #
  # fill me
  #
end
puts title("Task 2")
puts recent_movie_of_genre('Crime/Thriller') == 'Inside Man' ? right : wrong
puts recent_movie_of_genre('foobar') == 'sorry please try with different genre' ? right : wrong

# Task 3:
# now i want you to create a method to allow me to update an existing record with a different director
# then return the movie object out
# and return error message "cannot find movie" or "cannot find director" if any of the two cannot be found

def update_director_for_movie(movie_name, director_name)
  #
  # fill me
  #
end
puts title("Task 3")
puts update_director_for_movie('Rush Hour', 'Oren Peli')&.director&.name == 'Oren Peli' ? right : wrong
puts update_director_for_movie('Rush Hour', 'PETER WU')&.director&.name == 'cannot find director' ? right : wrong
puts update_director_for_movie('The Peter Wu story', 'Steven Spielberg')&.director&.name == 'cannot find movie' ? right : wrong
