class AddUserIdToSurgicalProcedures < ActiveRecord::Migration[5.1]
  def change
    add_column :surgical_procedures, :user_id, :integer
  end
end
