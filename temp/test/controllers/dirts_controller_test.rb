require 'test_helper'

class DirtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dirt = dirts(:one)
  end

  test "should get index" do
    get dirts_url
    assert_response :success
  end

  test "should get new" do
    get new_dirt_url
    assert_response :success
  end

  test "should create dirt" do
    assert_difference('Dirt.count') do
      post dirts_url, params: { dirt: { game: @dirt.game } }
    end

    assert_redirected_to dirt_url(Dirt.last)
  end

  test "should show dirt" do
    get dirt_url(@dirt)
    assert_response :success
  end

  test "should get edit" do
    get edit_dirt_url(@dirt)
    assert_response :success
  end

  test "should update dirt" do
    patch dirt_url(@dirt), params: { dirt: { game: @dirt.game } }
    assert_redirected_to dirt_url(@dirt)
  end

  test "should destroy dirt" do
    assert_difference('Dirt.count', -1) do
      delete dirt_url(@dirt)
    end

    assert_redirected_to dirts_url
  end
end
