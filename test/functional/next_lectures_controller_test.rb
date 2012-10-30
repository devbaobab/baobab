require 'test_helper'

class NextLecturesControllerTest < ActionController::TestCase
  setup do
    @next_lecture = next_lectures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:next_lectures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create next_lecture" do
    assert_difference('NextLecture.count') do
      post :create, next_lecture: { lecture_id: @next_lecture.lecture_id, next_id: @next_lecture.next_id }
    end

    assert_redirected_to next_lecture_path(assigns(:next_lecture))
  end

  test "should show next_lecture" do
    get :show, id: @next_lecture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @next_lecture
    assert_response :success
  end

  test "should update next_lecture" do
    put :update, id: @next_lecture, next_lecture: { lecture_id: @next_lecture.lecture_id, next_id: @next_lecture.next_id }
    assert_redirected_to next_lecture_path(assigns(:next_lecture))
  end

  test "should destroy next_lecture" do
    assert_difference('NextLecture.count', -1) do
      delete :destroy, id: @next_lecture
    end

    assert_redirected_to next_lectures_path
  end
end
