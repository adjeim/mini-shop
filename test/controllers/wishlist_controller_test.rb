require 'test_helper'

class WishlistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wishlist_index_url
    assert_response :success
  end

  test "should get show" do
    get wishlist_show_url
    assert_response :success
  end

  test "should get new" do
    get wishlist_new_url
    assert_response :success
  end

  test "should get create" do
    get wishlist_create_url
    assert_response :success
  end

  test "should get edit" do
    get wishlist_edit_url
    assert_response :success
  end

  test "should get update" do
    get wishlist_update_url
    assert_response :success
  end

  test "should get destroy" do
    get wishlist_destroy_url
    assert_response :success
  end

end
