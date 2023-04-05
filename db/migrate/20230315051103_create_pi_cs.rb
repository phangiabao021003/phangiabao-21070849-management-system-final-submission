class CreatePiCs < ActiveRecord::Migration[7.0]
  def change
    create_table :pi_cs do |t|
      t.string :Staffname
      t.integer :StaffID
      t.string :StaffPhone
      t.date :DateTransaction
      t.string :ClientName
      t.references :ClientID, null: false, foreign_key: true

      t.timestamps
    end
  end
end
