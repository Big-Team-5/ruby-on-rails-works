require "application_system_test_case"

class QuoteFormsTest < ApplicationSystemTestCase
  setup do
    @quote_form = quote_forms(:one)
  end

  test "visiting the index" do
    visit quote_forms_url
    assert_selector "h1", text: "Quote Forms"
  end

  test "creating a Quote form" do
    visit quote_forms_url
    click_on "New Quote Form"

    fill_in "Email", with: @quote_form.Email
    fill_in "Firstname", with: @quote_form.FirstName
    fill_in "Lastname", with: @quote_form.LastName
    fill_in "Phonenumber", with: @quote_form.PhoneNumber
    click_on "Create Quote form"

    assert_text "Quote form was successfully created"
    click_on "Back"
  end

  test "updating a Quote form" do
    visit quote_forms_url
    click_on "Edit", match: :first

    fill_in "Email", with: @quote_form.Email
    fill_in "Firstname", with: @quote_form.FirstName
    fill_in "Lastname", with: @quote_form.LastName
    fill_in "Phonenumber", with: @quote_form.PhoneNumber
    click_on "Update Quote form"

    assert_text "Quote form was successfully updated"
    click_on "Back"
  end

  test "destroying a Quote form" do
    visit quote_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quote form was successfully destroyed"
  end
end
