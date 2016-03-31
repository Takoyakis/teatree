class AddBinaryToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :file, :binary
    add_column :postings, :filename, :string
    remove_column :postings, :image, :text
  end
end
