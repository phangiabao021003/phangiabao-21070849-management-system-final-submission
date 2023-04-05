class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :ClientName
      t.string :ClientID
      t.string :Phone

      t.timestamps
    end
  end
end
