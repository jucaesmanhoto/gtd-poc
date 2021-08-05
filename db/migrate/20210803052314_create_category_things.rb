class CreateCategoryThings < ActiveRecord::Migration[6.0]
  def change
    create_table :category_things do |t|
      t.references :thing, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
