class CreateMatchLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :match_logs do |t|
      t.string :owner
      t.string :matchedwith

      t.timestamps
    end
  end
end
