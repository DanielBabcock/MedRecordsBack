# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171211170125) do

  create_table "family_histories", force: :cascade do |t|
    t.integer "patient_id"
    t.string "family_member_relation"
    t.boolean "prion_disease"
    t.boolean "cardiac_disease"
    t.boolean "cardiac_event"
    t.string "cardiac_event_ages"
    t.boolean "cardiac_death"
    t.string "cardiac_"
    t.string "death_age"
    t.boolean "diabetes"
    t.string "diabetes_type"
    t.boolean "organ_diseases"
    t.string "organ_disease_name"
    t.boolean "respiratory_disease"
    t.string "respiratory_disease_names"
    t.boolean "cancer"
    t.boolean "cancer_death"
    t.string "cancer_types"
    t.integer "cancer_event_age"
    t.boolean "high_blood_pressure"
    t.boolean "stroke"
    t.boolean "alzheimers_or_dementia"
    t.boolean "osteoporosis"
    t.boolean "bleeding_disorder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_family_histories_on_patient_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "major_illnesses", force: :cascade do |t|
    t.integer "patient_id"
    t.string "illness_name"
    t.datetime "illness_start_date"
    t.datetime "illness_end_date"
    t.string "care_giver_name"
    t.string "illness_notes"
    t.string "medication_name"
    t.string "medication_purpose"
    t.string "medication_dose"
    t.string "medication_frequency"
    t.datetime "medication_start_date"
    t.datetime "medication_end_date"
    t.string "treatment_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_major_illnesses_on_patient_id"
  end

  create_table "medications", force: :cascade do |t|
    t.integer "patient_id"
    t.string "medication_name"
    t.boolean "current_use"
    t.string "mediation_purpose"
    t.string "medication_dose_amount"
    t.string "medication_dose_frequency"
    t.datetime "medication_start_date"
    t.datetime "medication_end_date"
    t.string "care_giver"
    t.string "care_giver_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_medications_on_patient_id"
  end

  create_table "patient_infos", force: :cascade do |t|
    t.string "name_first"
    t.string "name_last"
    t.string "patient_sex"
    t.string "race"
    t.string "height"
    t.boolean "height_in_inches"
    t.integer "weight"
    t.boolean "weight_in_pounds"
    t.date "date_birth"
    t.string "address"
    t.integer "phone_number"
    t.string "emergency_contact_name_first"
    t.string "emergency_contact_name_last"
    t.string "emergency_contact_phone_number"
    t.string "emergency_contact_address"
    t.boolean "eligible_blood_donor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surgical_procedures", force: :cascade do |t|
    t.integer "patient_id"
    t.string "procedure_name"
    t.string "care_giver_name"
    t.string "care_giver_title"
    t.string "hospital"
    t.integer "hospital_phone"
    t.string "hospital_address"
    t.string "medication_name"
    t.string "medication_purpose"
    t.string "medication_dose"
    t.string "medication_frequency"
    t.datetime "medication_start_date"
    t.datetime "medication_end_date"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_surgical_procedures_on_patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vaccinations", force: :cascade do |t|
    t.integer "patient_id"
    t.string "vaccine_name"
    t.date "vaccination_date"
    t.date "vaccine_expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_vaccinations_on_patient_id"
  end

end
