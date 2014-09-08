class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :rating
      t.belongs_to :user
      t.belongs_to :listing

      t.timestamps
    end
  end
end
