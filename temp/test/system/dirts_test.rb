require "application_system_test_case"

class DirtsTest < ApplicationSystemTestCase
  setup do
    @dirt = dirts(:one)
  end

  test "visiting the index" do
    visit dirts_url
    assert_selector "h1", text: "Dirts"
  end

  test "creating a Dirt" do
    visit dirts_url
    click_on "New Dirt"

    fill_in "Game", with: @dirt.game
    click_on "Create Dirt"

    assert_text "Dirt was successfully created"
    click_on "Back"
  end

  test "updating a Dirt" do
    visit dirts_url
    click_on "Edit", match: :first

    fill_in "Game", with: @dirt.game
    click_on "Update Dirt"

    assert_text "Dirt was successfully updated"
    click_on "Back"
  end

  test "destroying a Dirt" do
    visit dirts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dirt was successfully destroyed"
  end
end
