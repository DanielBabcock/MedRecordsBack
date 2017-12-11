require 'test_helper'

class SurgicalProceduresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surgical_procedure = surgical_procedures(:one)
  end

  test "should get index" do
    get surgical_procedures_url, as: :json
    assert_response :success
  end

  test "should create surgical_procedure" do
    assert_difference('SurgicalProcedure.count') do
      post surgical_procedures_url, params: { surgical_procedure: { care_giver_name: @surgical_procedure.care_giver_name, care_giver_title: @surgical_procedure.care_giver_title, hospital: @surgical_procedure.hospital, hospital_address: @surgical_procedure.hospital_address, hospital_phone: @surgical_procedure.hospital_phone, medication_dose: @surgical_procedure.medication_dose, medication_end_date: @surgical_procedure.medication_end_date, medication_frequency: @surgical_procedure.medication_frequency, medication_name: @surgical_procedure.medication_name, medication_purpose: @surgical_procedure.medication_purpose, medication_start_date: @surgical_procedure.medication_start_date, notes: @surgical_procedure.notes, patient_id: @surgical_procedure.patient_id, procedure_name: @surgical_procedure.procedure_name } }, as: :json
    end

    assert_response 201
  end

  test "should show surgical_procedure" do
    get surgical_procedure_url(@surgical_procedure), as: :json
    assert_response :success
  end

  test "should update surgical_procedure" do
    patch surgical_procedure_url(@surgical_procedure), params: { surgical_procedure: { care_giver_name: @surgical_procedure.care_giver_name, care_giver_title: @surgical_procedure.care_giver_title, hospital: @surgical_procedure.hospital, hospital_address: @surgical_procedure.hospital_address, hospital_phone: @surgical_procedure.hospital_phone, medication_dose: @surgical_procedure.medication_dose, medication_end_date: @surgical_procedure.medication_end_date, medication_frequency: @surgical_procedure.medication_frequency, medication_name: @surgical_procedure.medication_name, medication_purpose: @surgical_procedure.medication_purpose, medication_start_date: @surgical_procedure.medication_start_date, notes: @surgical_procedure.notes, patient_id: @surgical_procedure.patient_id, procedure_name: @surgical_procedure.procedure_name } }, as: :json
    assert_response 200
  end

  test "should destroy surgical_procedure" do
    assert_difference('SurgicalProcedure.count', -1) do
      delete surgical_procedure_url(@surgical_procedure), as: :json
    end

    assert_response 204
  end
end
