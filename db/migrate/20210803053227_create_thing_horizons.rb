class CreateThingHorizons < ActiveRecord::Migration[6.0]
  def change
    create_table :thing_horizons do |t|
      t.references :horizon, null: false, foreign_key: true
      t.references :thing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
