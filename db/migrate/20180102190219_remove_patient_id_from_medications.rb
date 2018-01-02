class RemovePatientIdFromMedications < ActiveRecord::Migration[5.1]
  def change
    remove_column :medications, :patient_id, :string
  end
end
