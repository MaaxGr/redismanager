class CreateConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :connections do |t|
      t.string :name
      t.string :hostname
      t.integer :port
      t.string :password

      t.timestamps
    end
  end
end
