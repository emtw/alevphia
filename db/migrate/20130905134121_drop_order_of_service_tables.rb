class DropOrderOfServiceTables < ActiveRecord::Migration
  def up
    drop_table :order_of_services
    drop_table :csses
    drop_table :pages
  end

  def down
  end
end
