class CreateSurgicalProcedures < ActiveRecord::Migration[5.1]
  def change
    create_table :surgical_procedures do |t|
      t.references :patient, foreign_key: true
      t.string :procedure_name
      t.string :care_giver_name
      t.string :care_giver_title
      t.string :hospital
      t.integer :hospital_phone
      t.string :hospital_address
      t.string :medication_name
      t.string :medication_purpose
      t.string :medication_dose
      t.string :medication_frequency
      t.datetime :medication_start_date
      t.datetime :medication_end_date
      t.string :notes

      t.timestamps
    end
  end
end
