class AddFavoriteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :favprite_tea_type, :integer
    add_column :users, :favorite_leaf, :string
    add_column :users, :favorite_shop, :text
    add_column :users, :preference, :text
    remove_column :users, :favorite, :string
  end
end
