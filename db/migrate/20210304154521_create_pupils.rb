class CreatePupils < ActiveRecord::Migration[6.1]
  def change
    create_table :pupils do |t|
      t.string :first_name
      t.string :last_name
      t.string :external_ident, null: false, unique: true
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
