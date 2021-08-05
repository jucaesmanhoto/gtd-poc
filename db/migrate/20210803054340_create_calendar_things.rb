class CreateCalendarThings < ActiveRecord::Migration[6.0]
  def change
    create_table :calendar_things do |t|
      t.timestamp :dead_line_timestamp
      t.references :thing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
