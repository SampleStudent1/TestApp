require 'test_helper'

class TestResourcesControllerTest < ActionController::TestCase
  setup do
    @test_resource = test_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_resource" do
    assert_difference('TestResource.count') do
      post :create, test_resource: {  }
    end

    assert_redirected_to test_resource_path(assigns(:test_resource))
  end

  test "should show test_resource" do
    get :show, id: @test_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_resource
    assert_response :success
  end

  test "should update test_resource" do
    patch :update, id: @test_resource, test_resource: {  }
    assert_redirected_to test_resource_path(assigns(:test_resource))
  end

  test "should destroy test_resource" do
    assert_difference('TestResource.count', -1) do
      delete :destroy, id: @test_resource
    end

    assert_redirected_to test_resources_path
  end
end
