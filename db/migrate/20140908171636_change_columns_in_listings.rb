class ChangeColumnsInListings < ActiveRecord::Migration
  def change
    remove_column :listings, :description
    add_column :listings, :description, :text
  end
end
