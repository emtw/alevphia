class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :timeline_id
      t.date :start_date
      t.date :end_date
      t.text :headline
      t.text :text
      t.text :media
      t.text :thumbnail
      t.text :credit
      t.text :caption

      t.timestamps
    end
  end
end
