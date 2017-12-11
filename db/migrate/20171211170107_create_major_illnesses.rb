class CreateMajorIllnesses < ActiveRecord::Migration[5.1]
  def change
    create_table :major_illnesses do |t|
      t.references :patient, foreign_key: true
      t.string :illness_name
      t.datetime :illness_start_date
      t.datetime :illness_end_date
      t.string :care_giver_name
      t.string :illness_notes
      t.string :medication_name
      t.string :medication_purpose
      t.string :medication_dose
      t.string :medication_frequency
      t.datetime :medication_start_date
      t.datetime :medication_end_date
      t.string :treatment_notes

      t.timestamps
    end
  end
end
