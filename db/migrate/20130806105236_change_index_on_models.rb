class ChangeIndexOnModels < ActiveRecord::Migration
  def up
    remove_index(:users, :name => 'index_users_on_email')
    remove_index(:keyholders, :name => 'index_keyholders_on_email')
    remove_column :guests, :email
  end

  def down
  end
end
