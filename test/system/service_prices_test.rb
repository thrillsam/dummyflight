require "application_system_test_case"

class ServicePricesTest < ApplicationSystemTestCase
  setup do
    @service_price = service_prices(:one)
  end

  test "visiting the index" do
    visit service_prices_url
    assert_selector "h1", text: "Service Prices"
  end

  test "creating a Service price" do
    visit service_prices_url
    click_on "New Service Price"

    fill_in "Basic price", with: @service_price.basic_price
    fill_in "Bussiness price in percentage", with: @service_price.bussiness_price_in_percentage
    fill_in "First class price in percentage", with: @service_price.first_class_price_in_percentage
    fill_in "Flight", with: @service_price.flight_id
    click_on "Create Service price"

    assert_text "Service price was successfully created"
    click_on "Back"
  end

  test "updating a Service price" do
    visit service_prices_url
    click_on "Edit", match: :first

    fill_in "Basic price", with: @service_price.basic_price
    fill_in "Bussiness price in percentage", with: @service_price.bussiness_price_in_percentage
    fill_in "First class price in percentage", with: @service_price.first_class_price_in_percentage
    fill_in "Flight", with: @service_price.flight_id
    click_on "Update Service price"

    assert_text "Service price was successfully updated"
    click_on "Back"
  end

  test "destroying a Service price" do
    visit service_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service price was successfully destroyed"
  end
end
