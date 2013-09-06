class CreateCsses < ActiveRecord::Migration
  def change
    create_table :csses do |t|
      t.integer :order_of_service_id
      t.text :content

      t.timestamps
    end
  end
end
