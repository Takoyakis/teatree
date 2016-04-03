class RemoveImageFromPostings < ActiveRecord::Migration
  def change
    remove_column :postings, :image, :text
  end
end
