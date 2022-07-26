class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.float :wager
      t.string :odds
      t.string :bet_type
      t.string :currency
      t.timestamps
    end
  end
end
