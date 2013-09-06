class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :user_id
      t.integer :photo_id

      t.timestamps
    end
  end
end
