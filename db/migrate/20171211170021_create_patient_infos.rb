class CreatePatientInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :patient_infos do |t|
      t.string :name_first
      t.string :name_last
      t.string :patient_sex
      t.string :race
      t.string :height
      t.boolean :height_in_inches
      t.integer :weight
      t.boolean :weight_in_pounds
      t.date :date_birth
      t.string :address
      t.integer :phone_number
      t.string :emergency_contact_name_first
      t.string :emergency_contact_name_last
      t.string :emergency_contact_phone_number
      t.string :emergency_contact_address
      t.boolean :eligible_blood_donor

      t.timestamps
    end
  end
end
