class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
