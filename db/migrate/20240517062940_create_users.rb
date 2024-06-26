class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.date :dob
      t.string :address
      t.string :role
      t.text :bio

      t.timestamps
    end
  end
end
