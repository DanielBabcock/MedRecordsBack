class RemovePatientIdFromSurgicalProcedures < ActiveRecord::Migration[5.1]
  def change
    remove_column :surgical_procedures, :patient_id, :string
  end
end
