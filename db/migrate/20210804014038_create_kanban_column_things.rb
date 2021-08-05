class CreateKanbanColumnThings < ActiveRecord::Migration[6.0]
  def change
    create_table :kanban_column_things do |t|
      t.references :thing, null: false, foreign_key: true
      t.references :kanban_column, null: false, foreign_key: true

      t.timestamps
    end
  end
end
