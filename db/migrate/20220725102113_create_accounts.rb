class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.references :user, foreign_key: true
      t.string :balance
      t.string :starting_balance

      t.timestamps
    end
  end
end
