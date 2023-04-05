class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :ServiceName
      t.string :ServiceNumber
      t.integer :Cost
      t.references :ClientID, null: false, foreign_key: true
      t.references :Phone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
