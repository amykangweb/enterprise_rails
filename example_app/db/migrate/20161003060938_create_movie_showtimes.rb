class CreateMovieShowtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_showtimes do |t|
      t.references :movie, foreign_key: true
      t.references :theatre, foreign_key: true
      t.string :auditorium
      t.datetime :start_time
      t.string :primary, null: false, unique: true, index: true

      t.timestamps
    end
  end
end
