class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string   :name
      t.integer  :gram
      t.string   :temperature
      t.integer  :time
      t.text     :experience
      t.text     :coment
      t.timestamps
    end
  end
end
