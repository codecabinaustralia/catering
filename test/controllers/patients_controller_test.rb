require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { allergies: @patient.allergies, diet_texture: @patient.diet_texture, diet_type: @patient.diet_type, dislikes: @patient.dislikes, extra_information: @patient.extra_information, first_name: @patient.first_name, fluid_consistency: @patient.fluid_consistency, fluid_restriction: @patient.fluid_restriction, last_name: @patient.last_name, likes: @patient.likes, room_number: @patient.room_number } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { allergies: @patient.allergies, diet_texture: @patient.diet_texture, diet_type: @patient.diet_type, dislikes: @patient.dislikes, extra_information: @patient.extra_information, first_name: @patient.first_name, fluid_consistency: @patient.fluid_consistency, fluid_restriction: @patient.fluid_restriction, last_name: @patient.last_name, likes: @patient.likes, room_number: @patient.room_number } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end