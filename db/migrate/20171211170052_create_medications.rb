class CreateMedications < ActiveRecord::Migration[5.1]
  def change
    create_table :medications do |t|
      t.references :patient, foreign_key: true
      t.string :medication_name
      t.boolean :current_use
      t.string :mediation_purpose
      t.string :medication_dose_amount
      t.string :medication_dose_frequency
      t.datetime :medication_start_date
      t.datetime :medication_end_date
      t.string :care_giver
      t.string :care_giver_title

      t.timestamps
    end
  end
end
