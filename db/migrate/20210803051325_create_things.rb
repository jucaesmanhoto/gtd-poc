class CreateThings < ActiveRecord::Migration[6.0]
  def change
    create_table :things do |t|
      t.string :name
      t.string :description
      t.integer :energy
      t.string :priority
      t.timestamp :start_timestamp
      t.timestamp :end_timestamp
      t.references :duration, null: false, foreign_key: true
      t.references :recurrence, null: false, foreign_key: true

      t.timestamps
    end
  end
end
