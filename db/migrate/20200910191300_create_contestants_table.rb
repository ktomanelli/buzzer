class CreateContestantsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :contestants do |t|
      t.integer :game_id
      t.string :name
    end
  end
end
