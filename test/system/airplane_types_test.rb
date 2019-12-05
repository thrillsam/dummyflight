require "application_system_test_case"

class AirplaneTypesTest < ApplicationSystemTestCase
  setup do
    @airplane_type = airplane_types(:one)
  end

  test "visiting the index" do
    visit airplane_types_url
    assert_selector "h1", text: "Airplane Types"
  end

  test "creating a Airplane type" do
    visit airplane_types_url
    click_on "New Airplane Type"

    fill_in "Name", with: @airplane_type.name
    click_on "Create Airplane type"

    assert_text "Airplane type was successfully created"
    click_on "Back"
  end

  test "updating a Airplane type" do
    visit airplane_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @airplane_type.name
    click_on "Update Airplane type"

    assert_text "Airplane type was successfully updated"
    click_on "Back"
  end

  test "destroying a Airplane type" do
    visit airplane_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Airplane type was successfully destroyed"
  end
end
