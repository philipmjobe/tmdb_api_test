class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :original_title
      t.string :overview
      t.string :poster_path
      t.string :tagline

      t.timestamps
    end
  end
end
