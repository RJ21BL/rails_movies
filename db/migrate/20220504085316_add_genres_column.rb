class AddGenresColumn < ActiveRecord::Migration[6.1]
  def change
    add_reference :genres, :director, foreign_key: true
  end
end
