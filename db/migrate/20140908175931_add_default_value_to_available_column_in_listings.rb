class AddDefaultValueToAvailableColumnInListings < ActiveRecord::Migration
  def change
    change_column :listings, :available, :boolean, :default => true
  end
end
