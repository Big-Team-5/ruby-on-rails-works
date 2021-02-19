require 'test_helper'

class QuoteFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote_form = quote_forms(:one)
  end

  test "should get index" do
    get quote_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_form_url
    assert_response :success
  end

  test "should create quote_form" do
    assert_difference('QuoteForm.count') do
      post quote_forms_url, params: { quote_form: { Email: @quote_form.Email, FirstName: @quote_form.FirstName, LastName: @quote_form.LastName, PhoneNumber: @quote_form.PhoneNumber } }
    end

    assert_redirected_to quote_form_url(QuoteForm.last)
  end

  test "should show quote_form" do
    get quote_form_url(@quote_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_form_url(@quote_form)
    assert_response :success
  end

  test "should update quote_form" do
    patch quote_form_url(@quote_form), params: { quote_form: { Email: @quote_form.Email, FirstName: @quote_form.FirstName, LastName: @quote_form.LastName, PhoneNumber: @quote_form.PhoneNumber } }
    assert_redirected_to quote_form_url(@quote_form)
  end

  test "should destroy quote_form" do
    assert_difference('QuoteForm.count', -1) do
      delete quote_form_url(@quote_form)
    end

    assert_redirected_to quote_forms_url
  end
end
