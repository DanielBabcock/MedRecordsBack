class AddUserIdToMajorIllnesses < ActiveRecord::Migration[5.1]
  def change
    add_column :major_illnesses, :user_id, :integer
  end
end
