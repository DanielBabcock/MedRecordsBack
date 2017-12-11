class CreateFamilyHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :family_histories do |t|
      t.references :patient, foreign_key: true
      t.string :family_member_relation
      t.boolean :prion_disease
      t.boolean :cardiac_disease
      t.boolean :cardiac_event
      t.string :cardiac_event_ages
      t.boolean :cardiac_death
      t.string :cardiac_
      t.string :death_age
      t.boolean :diabetes
      t.string :diabetes_type
      t.boolean :organ_diseases
      t.string :organ_disease_name
      t.boolean :respiratory_disease
      t.string :respiratory_disease_names
      t.boolean :cancer
      t.boolean :cancer_death
      t.string :cancer_types
      t.integer :cancer_event_age
      t.boolean :high_blood_pressure
      t.boolean :stroke
      t.boolean :alzheimers_or_dementia
      t.boolean :osteoporosis
      t.boolean :bleeding_disorder

      t.timestamps
    end
  end
end
