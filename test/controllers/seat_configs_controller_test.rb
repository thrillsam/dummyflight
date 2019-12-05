require 'test_helper'

class SeatConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seat_config = seat_configs(:one)
  end

  test "should get index" do
    get seat_configs_url
    assert_response :success
  end

  test "should get new" do
    get new_seat_config_url
    assert_response :success
  end

  test "should create seat_config" do
    assert_difference('SeatConfig.count') do
      post seat_configs_url, params: { seat_config: { category: @seat_config.category, no_of_seat_in_row: @seat_config.no_of_seat_in_row, now_of_rows: @seat_config.now_of_rows } }
    end

    assert_redirected_to seat_config_url(SeatConfig.last)
  end

  test "should show seat_config" do
    get seat_config_url(@seat_config)
    assert_response :success
  end

  test "should get edit" do
    get edit_seat_config_url(@seat_config)
    assert_response :success
  end

  test "should update seat_config" do
    patch seat_config_url(@seat_config), params: { seat_config: { category: @seat_config.category, no_of_seat_in_row: @seat_config.no_of_seat_in_row, now_of_rows: @seat_config.now_of_rows } }
    assert_redirected_to seat_config_url(@seat_config)
  end

  test "should destroy seat_config" do
    assert_difference('SeatConfig.count', -1) do
      delete seat_config_url(@seat_config)
    end

    assert_redirected_to seat_configs_url
  end
end
