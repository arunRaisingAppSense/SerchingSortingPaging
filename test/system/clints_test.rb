require "application_system_test_case"

class ClintsTest < ApplicationSystemTestCase
  setup do
    @clint = clints(:one)
  end

  test "visiting the index" do
    visit clints_url
    assert_selector "h1", text: "Clints"
  end

  test "creating a Clint" do
    visit clints_url
    click_on "New Clint"

    click_on "Create Clint"

    assert_text "Clint was successfully created"
    click_on "Back"
  end

  test "updating a Clint" do
    visit clints_url
    click_on "Edit", match: :first

    click_on "Update Clint"

    assert_text "Clint was successfully updated"
    click_on "Back"
  end

  test "destroying a Clint" do
    visit clints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clint was successfully destroyed"
  end
end
