class CreateThingResponsibles < ActiveRecord::Migration[6.0]
  def change
    create_table :thing_responsibles do |t|
      t.timestamp :return_dead_line_timestamp
      t.references :thing, null: false, foreign_key: true
      t.references :responsable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
