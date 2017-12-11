require 'test_helper'

class FamilyHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_history = family_histories(:one)
  end

  test "should get index" do
    get family_histories_url, as: :json
    assert_response :success
  end

  test "should create family_history" do
    assert_difference('FamilyHistory.count') do
      post family_histories_url, params: { family_history: { alzheimers_or_dementia: @family_history.alzheimers_or_dementia, bleeding_disorder: @family_history.bleeding_disorder, cancer: @family_history.cancer, cancer_death: @family_history.cancer_death, cancer_event_age: @family_history.cancer_event_age, cancer_types: @family_history.cancer_types, cardiac_: @family_history.cardiac_, cardiac_death: @family_history.cardiac_death, cardiac_disease: @family_history.cardiac_disease, cardiac_event: @family_history.cardiac_event, cardiac_event_ages: @family_history.cardiac_event_ages, death_age: @family_history.death_age, diabetes: @family_history.diabetes, diabetes_type: @family_history.diabetes_type, family_member_relation: @family_history.family_member_relation, high_blood_pressure: @family_history.high_blood_pressure, organ_disease_name: @family_history.organ_disease_name, organ_diseases: @family_history.organ_diseases, osteoporosis: @family_history.osteoporosis, patient_id: @family_history.patient_id, prion_disease: @family_history.prion_disease, respiratory_disease: @family_history.respiratory_disease, respiratory_disease_names: @family_history.respiratory_disease_names, stroke: @family_history.stroke } }, as: :json
    end

    assert_response 201
  end

  test "should show family_history" do
    get family_history_url(@family_history), as: :json
    assert_response :success
  end

  test "should update family_history" do
    patch family_history_url(@family_history), params: { family_history: { alzheimers_or_dementia: @family_history.alzheimers_or_dementia, bleeding_disorder: @family_history.bleeding_disorder, cancer: @family_history.cancer, cancer_death: @family_history.cancer_death, cancer_event_age: @family_history.cancer_event_age, cancer_types: @family_history.cancer_types, cardiac_: @family_history.cardiac_, cardiac_death: @family_history.cardiac_death, cardiac_disease: @family_history.cardiac_disease, cardiac_event: @family_history.cardiac_event, cardiac_event_ages: @family_history.cardiac_event_ages, death_age: @family_history.death_age, diabetes: @family_history.diabetes, diabetes_type: @family_history.diabetes_type, family_member_relation: @family_history.family_member_relation, high_blood_pressure: @family_history.high_blood_pressure, organ_disease_name: @family_history.organ_disease_name, organ_diseases: @family_history.organ_diseases, osteoporosis: @family_history.osteoporosis, patient_id: @family_history.patient_id, prion_disease: @family_history.prion_disease, respiratory_disease: @family_history.respiratory_disease, respiratory_disease_names: @family_history.respiratory_disease_names, stroke: @family_history.stroke } }, as: :json
    assert_response 200
  end

  test "should destroy family_history" do
    assert_difference('FamilyHistory.count', -1) do
      delete family_history_url(@family_history), as: :json
    end

    assert_response 204
  end
end
