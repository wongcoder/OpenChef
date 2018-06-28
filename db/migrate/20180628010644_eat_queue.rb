class EatQueue < ActiveRecord::Migration[5.1]
  def change
    rename_column :eat_queues, :username, :userid
  end
end
