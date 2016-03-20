class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|

      t.timestamps null: false
    end
  end
end
