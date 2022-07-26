class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :street
      t.string :street_2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip

      t.timestamps
    end
  end
end
