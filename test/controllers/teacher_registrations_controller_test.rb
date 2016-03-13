require 'test_helper'

class TeacherRegistrationsControllerTest < ActionController::TestCase
  setup do
    @teacher_registration = teacher_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_registration" do
    assert_difference('TeacherRegistration.count') do
      post :create, teacher_registration: { seminar_id: @teacher_registration.seminar_id, user_id: @teacher_registration.user_id }
    end

    assert_redirected_to teacher_registration_path(assigns(:teacher_registration))
  end

  test "should show teacher_registration" do
    get :show, id: @teacher_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_registration
    assert_response :success
  end

  test "should update teacher_registration" do
    patch :update, id: @teacher_registration, teacher_registration: { seminar_id: @teacher_registration.seminar_id, user_id: @teacher_registration.user_id }
    assert_redirected_to teacher_registration_path(assigns(:teacher_registration))
  end

  test "should destroy teacher_registration" do
    assert_difference('TeacherRegistration.count', -1) do
      delete :destroy, id: @teacher_registration
    end

    assert_redirected_to teacher_registrations_path
  end
end
