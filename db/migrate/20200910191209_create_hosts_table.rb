class CreateHostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :hosts do |t|
      t.string :name
    end
  end
end
