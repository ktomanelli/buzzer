class CreateGamesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :host_id
      t.string :title
    end
  end
end
