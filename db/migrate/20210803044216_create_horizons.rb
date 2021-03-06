class CreateHorizons < ActiveRecord::Migration[6.0]
  def change
    create_table :horizons do |t|
      t.string :name
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
