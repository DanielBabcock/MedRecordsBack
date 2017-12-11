require 'test_helper'

class PatientInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_info = patient_infos(:one)
  end

  test "should get index" do
    get patient_infos_url, as: :json
    assert_response :success
  end

  test "should create patient_info" do
    assert_difference('PatientInfo.count') do
      post patient_infos_url, params: { patient_info: { address: @patient_info.address, date_birth: @patient_info.date_birth, eligible_blood_donor: @patient_info.eligible_blood_donor, emergency_contact_address: @patient_info.emergency_contact_address, emergency_contact_name_first: @patient_info.emergency_contact_name_first, emergency_contact_name_last: @patient_info.emergency_contact_name_last, emergency_contact_phone_number: @patient_info.emergency_contact_phone_number, height: @patient_info.height, height_in_inches: @patient_info.height_in_inches, name_first: @patient_info.name_first, name_last: @patient_info.name_last, patient_sex: @patient_info.patient_sex, phone_number: @patient_info.phone_number, race: @patient_info.race, weight: @patient_info.weight, weight_in_pounds: @patient_info.weight_in_pounds } }, as: :json
    end

    assert_response 201
  end

  test "should show patient_info" do
    get patient_info_url(@patient_info), as: :json
    assert_response :success
  end

  test "should update patient_info" do
    patch patient_info_url(@patient_info), params: { patient_info: { address: @patient_info.address, date_birth: @patient_info.date_birth, eligible_blood_donor: @patient_info.eligible_blood_donor, emergency_contact_address: @patient_info.emergency_contact_address, emergency_contact_name_first: @patient_info.emergency_contact_name_first, emergency_contact_name_last: @patient_info.emergency_contact_name_last, emergency_contact_phone_number: @patient_info.emergency_contact_phone_number, height: @patient_info.height, height_in_inches: @patient_info.height_in_inches, name_first: @patient_info.name_first, name_last: @patient_info.name_last, patient_sex: @patient_info.patient_sex, phone_number: @patient_info.phone_number, race: @patient_info.race, weight: @patient_info.weight, weight_in_pounds: @patient_info.weight_in_pounds } }, as: :json
    assert_response 200
  end

  test "should destroy patient_info" do
    assert_difference('PatientInfo.count', -1) do
      delete patient_info_url(@patient_info), as: :json
    end

    assert_response 204
  end
end
