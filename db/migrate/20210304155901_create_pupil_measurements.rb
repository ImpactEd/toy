class CreatePupilMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :pupil_measurements do |t|
      t.string :assessment, null: false
      t.string :original_mark, null: false
      t.integer :score
      t.date :measurement_date, null: false
      t.references :pupil, null: false, foreign_key: true

      t.timestamps
    end
  end
end
