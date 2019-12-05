require 'test_helper'

class ServicePricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_price = service_prices(:one)
  end

  test "should get index" do
    get service_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_service_price_url
    assert_response :success
  end

  test "should create service_price" do
    assert_difference('ServicePrice.count') do
      post service_prices_url, params: { service_price: { basic_price: @service_price.basic_price, bussiness_price_in_percentage: @service_price.bussiness_price_in_percentage, first_class_price_in_percentage: @service_price.first_class_price_in_percentage, flight_id: @service_price.flight_id } }
    end

    assert_redirected_to service_price_url(ServicePrice.last)
  end

  test "should show service_price" do
    get service_price_url(@service_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_price_url(@service_price)
    assert_response :success
  end

  test "should update service_price" do
    patch service_price_url(@service_price), params: { service_price: { basic_price: @service_price.basic_price, bussiness_price_in_percentage: @service_price.bussiness_price_in_percentage, first_class_price_in_percentage: @service_price.first_class_price_in_percentage, flight_id: @service_price.flight_id } }
    assert_redirected_to service_price_url(@service_price)
  end

  test "should destroy service_price" do
    assert_difference('ServicePrice.count', -1) do
      delete service_price_url(@service_price)
    end

    assert_redirected_to service_prices_url
  end
end
