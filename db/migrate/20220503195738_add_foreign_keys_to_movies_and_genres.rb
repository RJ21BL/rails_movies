class AddForeignKeysToMoviesAndGenres < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :movies, :directors
    add_foreign_key :genres, :movies
  end
end
