class AddNicknameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :favorite, :string
  end
end
