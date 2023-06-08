class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t| 
      t.string :comments 
      t.integer :ratings
      t.string :owner_id
      t.string :house_id
      t.string :house_url
      t.integer :likes
    end
  end
end
