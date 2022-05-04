class DropGenreTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :genres
  end
end
