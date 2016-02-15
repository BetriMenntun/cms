require 'test_helper'

class LectureCommentsControllerTest < ActionController::TestCase
  setup do
    @lecture_comment = lecture_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecture_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecture_comment" do
    assert_difference('LectureComment.count') do
      post :create, lecture_comment: { body: @lecture_comment.body, lecture_id: @lecture_comment.lecture_id, user_id: @lecture_comment.user_id }
    end

    assert_redirected_to lecture_comment_path(assigns(:lecture_comment))
  end

  test "should show lecture_comment" do
    get :show, id: @lecture_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecture_comment
    assert_response :success
  end

  test "should update lecture_comment" do
    patch :update, id: @lecture_comment, lecture_comment: { body: @lecture_comment.body, lecture_id: @lecture_comment.lecture_id, user_id: @lecture_comment.user_id }
    assert_redirected_to lecture_comment_path(assigns(:lecture_comment))
  end

  test "should destroy lecture_comment" do
    assert_difference('LectureComment.count', -1) do
      delete :destroy, id: @lecture_comment
    end

    assert_redirected_to lecture_comments_path
  end
end
