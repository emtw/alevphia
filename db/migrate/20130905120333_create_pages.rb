class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :order_of_service_id
      t.integer :section_id

      t.timestamps
    end
  end
end
