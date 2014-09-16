require 'test_helper'

class AdFormatsControllerTest < ActionController::TestCase
  setup do
    @ad_format = ad_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_format" do
    assert_difference('AdFormat.count') do
      post :create, ad_format: { name: @ad_format.name }
    end

    assert_redirected_to ad_format_path(assigns(:ad_format))
  end

  test "should show ad_format" do
    get :show, id: @ad_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad_format
    assert_response :success
  end

  test "should update ad_format" do
    patch :update, id: @ad_format, ad_format: { name: @ad_format.name }
    assert_redirected_to ad_format_path(assigns(:ad_format))
  end

  test "should destroy ad_format" do
    assert_difference('AdFormat.count', -1) do
      delete :destroy, id: @ad_format
    end

    assert_redirected_to ad_formats_path
  end
end
