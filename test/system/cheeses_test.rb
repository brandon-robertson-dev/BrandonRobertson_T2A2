require "application_system_test_case"

class CheesesTest < ApplicationSystemTestCase
  setup do
    @cheese = cheeses(:one)
  end

  test "visiting the index" do
    visit cheeses_url
    assert_selector "h1", text: "Cheeses"
  end

  test "creating a Cheese" do
    visit cheeses_url
    click_on "New Cheese"

    fill_in "Availability", with: @cheese.availability
    fill_in "Cheese type", with: @cheese.cheese_type
    fill_in "Description", with: @cheese.description
    fill_in "Location", with: @cheese.location
    fill_in "Milk", with: @cheese.milk
    fill_in "Name", with: @cheese.name
    fill_in "Price", with: @cheese.price
    fill_in "Rennet coagulat", with: @cheese.rennet_coagulat
    fill_in "Rind", with: @cheese.rind
    fill_in "Size", with: @cheese.size
    click_on "Create Cheese"

    assert_text "Cheese was successfully created"
    click_on "Back"
  end

  test "updating a Cheese" do
    visit cheeses_url
    click_on "Edit", match: :first

    fill_in "Availability", with: @cheese.availability
    fill_in "Cheese type", with: @cheese.cheese_type
    fill_in "Description", with: @cheese.description
    fill_in "Location", with: @cheese.location
    fill_in "Milk", with: @cheese.milk
    fill_in "Name", with: @cheese.name
    fill_in "Price", with: @cheese.price
    fill_in "Rennet coagulat", with: @cheese.rennet_coagulat
    fill_in "Rind", with: @cheese.rind
    fill_in "Size", with: @cheese.size
    click_on "Update Cheese"

    assert_text "Cheese was successfully updated"
    click_on "Back"
  end

  test "destroying a Cheese" do
    visit cheeses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cheese was successfully destroyed"
  end
end
