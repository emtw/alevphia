class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.integer :user_id
      t.string :username
      t.boolean :guest, :default => true

      t.timestamps
    end
    add_index :guests, :username, :unique => true
  end
end
