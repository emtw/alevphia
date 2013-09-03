class CreateMessageBoards < ActiveRecord::Migration
  def change
    create_table :message_boards do |t|
      t.integer :user_id
      t.integer :message_id

      t.timestamps
    end
  end
end
