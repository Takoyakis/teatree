class AddFavorteteatypeToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :favprite_tea_type, :integer
    add_column :users, :favorite_tea_type, :integer
  end
end
