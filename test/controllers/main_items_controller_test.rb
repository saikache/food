require 'test_helper'

class MainItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_item = main_items(:one)
  end

  test "should get index" do
    get main_items_url
    assert_response :success
  end

  test "should get new" do
    get new_main_item_url
    assert_response :success
  end

  test "should create main_item" do
    assert_difference('MainItem.count') do
      post main_items_url, params: { main_item: { description: @main_item.description, menu_id: @main_item.menu_id, name: @main_item.name } }
    end

    assert_redirected_to main_item_url(MainItem.last)
  end

  test "should show main_item" do
    get main_item_url(@main_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_item_url(@main_item)
    assert_response :success
  end

  test "should update main_item" do
    patch main_item_url(@main_item), params: { main_item: { description: @main_item.description, menu_id: @main_item.menu_id, name: @main_item.name } }
    assert_redirected_to main_item_url(@main_item)
  end

  test "should destroy main_item" do
    assert_difference('MainItem.count', -1) do
      delete main_item_url(@main_item)
    end

    assert_redirected_to main_items_url
  end
end
