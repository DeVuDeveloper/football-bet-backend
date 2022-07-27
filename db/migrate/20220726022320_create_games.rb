class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.date :match_date
      t.time :match_time
      t.string :match_name
      t.string :location
      t.string :one
      t.string :draw
      t.string :two
      t.string :one_draw
      t.string :two_draw
      t.string :street
      t.string :street_2
      t.string :city
      t.string :state
      t.string :country
      t.string :winner
      t.string :zip

      t.timestamps
    end
  end
end
