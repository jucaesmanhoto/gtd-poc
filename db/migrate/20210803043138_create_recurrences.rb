class CreateRecurrences < ActiveRecord::Migration[6.0]
  def change
    create_table :recurrences do |t|
      t.string :name
     t.references :duration, null: false, foreign_key: true

      t.timestamps
    end
  end
end
