require 'test_helper'

class MajorIllnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @major_illness = major_illnesses(:one)
  end

  test "should get index" do
    get major_illnesses_url, as: :json
    assert_response :success
  end

  test "should create major_illness" do
    assert_difference('MajorIllness.count') do
      post major_illnesses_url, params: { major_illness: { care_giver_name: @major_illness.care_giver_name, illness_end_date: @major_illness.illness_end_date, illness_name: @major_illness.illness_name, illness_notes: @major_illness.illness_notes, illness_start_date: @major_illness.illness_start_date, medication_dose: @major_illness.medication_dose, medication_end_date: @major_illness.medication_end_date, medication_frequency: @major_illness.medication_frequency, medication_name: @major_illness.medication_name, medication_purpose: @major_illness.medication_purpose, medication_start_date: @major_illness.medication_start_date, patient_id: @major_illness.patient_id, treatment_notes: @major_illness.treatment_notes } }, as: :json
    end

    assert_response 201
  end

  test "should show major_illness" do
    get major_illness_url(@major_illness), as: :json
    assert_response :success
  end

  test "should update major_illness" do
    patch major_illness_url(@major_illness), params: { major_illness: { care_giver_name: @major_illness.care_giver_name, illness_end_date: @major_illness.illness_end_date, illness_name: @major_illness.illness_name, illness_notes: @major_illness.illness_notes, illness_start_date: @major_illness.illness_start_date, medication_dose: @major_illness.medication_dose, medication_end_date: @major_illness.medication_end_date, medication_frequency: @major_illness.medication_frequency, medication_name: @major_illness.medication_name, medication_purpose: @major_illness.medication_purpose, medication_start_date: @major_illness.medication_start_date, patient_id: @major_illness.patient_id, treatment_notes: @major_illness.treatment_notes } }, as: :json
    assert_response 200
  end

  test "should destroy major_illness" do
    assert_difference('MajorIllness.count', -1) do
      delete major_illness_url(@major_illness), as: :json
    end

    assert_response 204
  end
end
