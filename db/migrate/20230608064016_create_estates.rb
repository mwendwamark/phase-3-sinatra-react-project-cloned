class CreateEstates < ActiveRecord::Migration[6.1]
  def change
    create_table :estates do |t|
      t.string :location
      t.string :image_url
      t.integer :rent
      t.string :description
    end
  end
end
