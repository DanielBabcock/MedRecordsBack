require 'test_helper'

class MedicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medication = medications(:one)
  end

  test "should get index" do
    get medications_url, as: :json
    assert_response :success
  end

  test "should create medication" do
    assert_difference('Medication.count') do
      post medications_url, params: { medication: { care_giver: @medication.care_giver, care_giver_title: @medication.care_giver_title, current_use: @medication.current_use, mediation_purpose: @medication.mediation_purpose, medication_dose_amount: @medication.medication_dose_amount, medication_dose_frequency: @medication.medication_dose_frequency, medication_end_date: @medication.medication_end_date, medication_name: @medication.medication_name, medication_start_date: @medication.medication_start_date, patient_id: @medication.patient_id } }, as: :json
    end

    assert_response 201
  end

  test "should show medication" do
    get medication_url(@medication), as: :json
    assert_response :success
  end

  test "should update medication" do
    patch medication_url(@medication), params: { medication: { care_giver: @medication.care_giver, care_giver_title: @medication.care_giver_title, current_use: @medication.current_use, mediation_purpose: @medication.mediation_purpose, medication_dose_amount: @medication.medication_dose_amount, medication_dose_frequency: @medication.medication_dose_frequency, medication_end_date: @medication.medication_end_date, medication_name: @medication.medication_name, medication_start_date: @medication.medication_start_date, patient_id: @medication.patient_id } }, as: :json
    assert_response 200
  end

  test "should destroy medication" do
    assert_difference('Medication.count', -1) do
      delete medication_url(@medication), as: :json
    end

    assert_response 204
  end
end
