class CreateProjectThings < ActiveRecord::Migration[6.0]
  def change
    create_table :project_things do |t|
      t.references :thing
      t.references :project, null: false, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
