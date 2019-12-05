require 'test_helper'

class AirplaneTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airplane_type = airplane_types(:one)
  end

  test "should get index" do
    get airplane_types_url
    assert_response :success
  end

  test "should get new" do
    get new_airplane_type_url
    assert_response :success
  end

  test "should create airplane_type" do
    assert_difference('AirplaneType.count') do
      post airplane_types_url, params: { airplane_type: { name: @airplane_type.name } }
    end

    assert_redirected_to airplane_type_url(AirplaneType.last)
  end

  test "should show airplane_type" do
    get airplane_type_url(@airplane_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_airplane_type_url(@airplane_type)
    assert_response :success
  end

  test "should update airplane_type" do
    patch airplane_type_url(@airplane_type), params: { airplane_type: { name: @airplane_type.name } }
    assert_redirected_to airplane_type_url(@airplane_type)
  end

  test "should destroy airplane_type" do
    assert_difference('AirplaneType.count', -1) do
      delete airplane_type_url(@airplane_type)
    end

    assert_redirected_to airplane_types_url
  end
end
