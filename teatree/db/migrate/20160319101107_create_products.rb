class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :name
      t.string  :species
      t.text  :explanation
      t.integer  :gram
      t.string  :temperature
      t.integer :time

      t.timestamps
    end
  end
end
