class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.integer :rating
      t.string :contactPhone
      t.string :imageDirectory

      t.timestamps
    end
  end
end
