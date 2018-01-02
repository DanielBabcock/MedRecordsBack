class RemovePatientIdFromVaccinations < ActiveRecord::Migration[5.1]
  def change
    remove_column :vaccinations, :patient_id, :string
  end
end
