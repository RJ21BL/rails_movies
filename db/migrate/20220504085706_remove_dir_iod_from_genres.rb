class RemoveDirIodFromGenres < ActiveRecord::Migration[6.1]
  def change
    remove_column :genres, :director_id
  end
end
