class AddUserIdToPatientInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :patient_infos, :user_id, :integer
  end
end
