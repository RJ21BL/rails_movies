class UpdateForeignKeyForMovies < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :genres, :movies
  end
end
