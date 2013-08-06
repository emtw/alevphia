class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_names
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.string :line_1
      t.string :line_2
      t.string :line_3
      t.string :town
      t.string :county
      t.string :postcode
      t.string :contact_number
      t.boolean :user, :default => true
      t.string :username
      t.integer :keyholder_id
      t.integer :guest_id

      t.timestamps
    end
    add_index :users, :username, :unique => true
  end
end
