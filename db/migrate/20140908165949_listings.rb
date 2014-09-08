class Listings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :description
      t.string :location
      t.boolean :available
      t.float :price

      t.timestamps
    end
  end
end
