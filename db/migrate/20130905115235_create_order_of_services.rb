class CreateOrderOfServices < ActiveRecord::Migration
  def change
    create_table :order_of_services do |t|
      t.integer :user_id
      t.integer :css_id
      t.integer :page_id

      t.timestamps
    end
  end
end
