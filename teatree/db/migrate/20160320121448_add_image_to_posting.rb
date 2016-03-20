class AddImageToPosting < ActiveRecord::Migration

  def change
    add_column :postings, :image, :text
  end
end
