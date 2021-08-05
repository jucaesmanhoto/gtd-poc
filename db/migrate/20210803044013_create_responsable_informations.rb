class CreateResponsableInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :responsable_informations do |t|
      t.string :type
      t.string :value
      t.string :regex
      t.references :responsable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
