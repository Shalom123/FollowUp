require 'test_helper'

class PersonControllerTest < ActionController::TestCase
  test "should get supervisor" do
    get :supervisor
    assert_response :success
  end

  test "should get classrepresentative" do
    get :classrepresentative
    assert_response :success
  end

  test "should get lecturer" do
    get :lecturer
    assert_response :success
  end

end
