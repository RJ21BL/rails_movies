load File.expand_path("setup.rb", __dir__)

# Task 1:
# can you write a method that
# take "genre" as an String input
# and it returns the most recent movie name

def recent_movie_of_genre(genre)
  movie = Movie.joins(:genre).where(genre: {name: genre}).order(year: :desc)#limit(1).first.title
  
  list_movies = movie.all.map do |m| 
    m.title
  end
  list_movies.first
end
puts title("Task 1")
puts recent_movie_of_genre('Crime/Thriller') == 'Inside Man' ? right : wrong

# Task 2:
# now return an error message when the provied genre does not yield any movie
# e.g. "sorry please try with different genre"

def recent_movie_of_genre(genre)
  movie = Movie.joins(:genre).where(genre: {name: genre}).order(year: :desc)
  title_finder = movie.all.map { |m| m.title }

  if title_finder.first == nil
    'sorry please try with different genre'
  else
    title_finder.first
  end
end
puts title("Task 2")
puts recent_movie_of_genre('Crime/Thriller') == 'Inside Man' ? right : wrong
puts recent_movie_of_genre('foobar') == 'sorry please try with different genre' ? right : wrong

# Task 3:
# now i want you to create a method to allow me to update an existing record with a different director
# then return the movie object out
# and return error message "cannot find movie" or "cannot find director" if any of the two cannot be found
def update_director_for_movie(movie_name, director_name)
  # joined_tables = Movie.joins(:director)
  # movie = joined_tables.find_by(title: movie_name)
  movie = Movie.find_by(title: movie_name)
  director = Director.find_by(name: director_name)

  if movie.present? && director.present?
    movie.update(director_id: director.id)
    movie
  elsif director.blank?
    'cannot find director'
  elsif movie.blank?
    'cannot find movie'
  end
end
puts title("Task 3")

puts update_director_for_movie('Rush Hour', 'Oren Peli')&.director&.name == 'Oren Peli' ? right : wrong
puts update_director_for_movie('Rush Hour', 'PETER WU') == 'cannot find director' ? right : wrong
puts update_director_for_movie('The Peter Wu story', 'Steven Spielberg') == 'cannot find movie' ? right : wrong