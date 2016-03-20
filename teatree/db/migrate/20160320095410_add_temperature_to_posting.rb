class AddTemperatureToPosting < ActiveRecord::Migration
  def change
    remove_column :postings, :temperature, :string
    add_column :postings, :temperature, :integer
  end
end
