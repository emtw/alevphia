class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :gallery_id
      t.string :title
      t.string :description
      t.string :uploaded_by
      t.string :image

      t.timestamps
    end
  end
end
