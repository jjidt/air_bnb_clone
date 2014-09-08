class AddAttachmentColumnToListings < ActiveRecord::Migration
  def change
    add_attachment :listings, :photo
  end
end
