class CreateContextThings < ActiveRecord::Migration[6.0]
  def change
    create_table :context_things do |t|
      t.references :thing, null: false, foreign_key: true
      t.references :context, null: false, foreign_key: true

      t.timestamps
    end
  end
end
