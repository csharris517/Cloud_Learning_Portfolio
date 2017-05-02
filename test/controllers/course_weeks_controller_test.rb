require 'test_helper'

class CourseWeeksControllerTest < ActionController::TestCase
  setup do
    @course_week = course_weeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_weeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_week" do
    assert_difference('CourseWeek.count') do
      post :create, course_week: {  }
    end

    assert_redirected_to course_week_path(assigns(:course_week))
  end

  test "should show course_week" do
    get :show, id: @course_week
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_week
    assert_response :success
  end

  test "should update course_week" do
    patch :update, id: @course_week, course_week: {  }
    assert_redirected_to course_week_path(assigns(:course_week))
  end

  test "should destroy course_week" do
    assert_difference('CourseWeek.count', -1) do
      delete :destroy, id: @course_week
    end

    assert_redirected_to course_weeks_path
  end
end
