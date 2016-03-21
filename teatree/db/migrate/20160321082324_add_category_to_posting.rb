class AddCategoryToPosting < ActiveRecord::Migration
  def change
      add_column :postings, :category_id, :integer
  end
end
