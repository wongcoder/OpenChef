class CreateEatQueues < ActiveRecord::Migration[5.1]
  def change
    create_table :eat_queues do |t|
      t.string :username
      t.string :restaurantname

      t.timestamps
    end
  end
end
