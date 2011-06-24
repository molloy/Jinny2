require 'test_helper'

class CourseOfferingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_offerings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_offering" do
    assert_difference('CourseOffering.count') do
      post :create, :course_offering => { }
    end

    assert_redirected_to course_offering_path(assigns(:course_offering))
  end

  test "should show course_offering" do
    get :show, :id => course_offerings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => course_offerings(:one).to_param
    assert_response :success
  end

  test "should update course_offering" do
    put :update, :id => course_offerings(:one).to_param, :course_offering => { }
    assert_redirected_to course_offering_path(assigns(:course_offering))
  end

  test "should destroy course_offering" do
    assert_difference('CourseOffering.count', -1) do
      delete :destroy, :id => course_offerings(:one).to_param
    end

    assert_redirected_to course_offerings_path
  end
end
