class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
	  t.string :author
	  t.text :content
	  t.string :image
	  t.string :source

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
