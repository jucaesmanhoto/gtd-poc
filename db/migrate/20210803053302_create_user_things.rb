class CreateUserThings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_things do |t|
      t.references :user, null: false, foreign_key: true
      t.references :thing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
