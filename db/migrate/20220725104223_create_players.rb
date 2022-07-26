class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :nationality
      t.string :full_name
      t.string :team_name
      t.string :date_of_birth
      t.string :date_signed
      t.string :birth_location
      t.string :contracted_salary
      t.string :wage
      t.string :description
      t.string :position
      t.string :height
      t.string :weight
      t.string :profile_image
      t.string :thumbnail
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
