class RemoveMovIdFromGenres < ActiveRecord::Migration[6.1]
  def change
    remove_column :genres, :movie_id
  end
end
