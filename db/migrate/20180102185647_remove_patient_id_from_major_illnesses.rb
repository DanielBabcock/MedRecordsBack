class RemovePatientIdFromMajorIllnesses < ActiveRecord::Migration[5.1]
  def change
    remove_column :major_illnesses, :patient_id, :string
  end
end
