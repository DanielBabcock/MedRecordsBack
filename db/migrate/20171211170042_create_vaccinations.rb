class CreateVaccinations < ActiveRecord::Migration[5.1]
  def change
    create_table :vaccinations do |t|
      t.references :patient, foreign_key: true
      t.string :vaccine_name
      t.date :vaccination_date
      t.date :vaccine_expiration

      t.timestamps
    end
  end
end
