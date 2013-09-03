class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :message_board_id
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
