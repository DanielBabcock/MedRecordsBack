require 'test_helper'

class VaccinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vaccination = vaccinations(:one)
  end

  test "should get index" do
    get vaccinations_url, as: :json
    assert_response :success
  end

  test "should create vaccination" do
    assert_difference('Vaccination.count') do
      post vaccinations_url, params: { vaccination: { patient_id: @vaccination.patient_id, vaccination_date: @vaccination.vaccination_date, vaccine_expiration: @vaccination.vaccine_expiration, vaccine_name: @vaccination.vaccine_name } }, as: :json
    end

    assert_response 201
  end

  test "should show vaccination" do
    get vaccination_url(@vaccination), as: :json
    assert_response :success
  end

  test "should update vaccination" do
    patch vaccination_url(@vaccination), params: { vaccination: { patient_id: @vaccination.patient_id, vaccination_date: @vaccination.vaccination_date, vaccine_expiration: @vaccination.vaccine_expiration, vaccine_name: @vaccination.vaccine_name } }, as: :json
    assert_response 200
  end

  test "should destroy vaccination" do
    assert_difference('Vaccination.count', -1) do
      delete vaccination_url(@vaccination), as: :json
    end

    assert_response 204
  end
end
