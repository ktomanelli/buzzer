class AddBuzzedColumnToContestants < ActiveRecord::Migration[6.0]
  def change
    add_column :contestants, :buzzed, :boolean, :default=>false
    add_timestamps :contestants
  end
end
