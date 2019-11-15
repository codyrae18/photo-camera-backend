require 'test_helper'

class CamerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camera = cameras(:one)
  end

  test "should get index" do
    get cameras_url, as: :json
    assert_response :success
  end

  test "should create camera" do
    assert_difference('Camera.count') do
      post cameras_url, params: { camera: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show camera" do
    get camera_url(@camera), as: :json
    assert_response :success
  end

  test "should update camera" do
    patch camera_url(@camera), params: { camera: {  } }, as: :json
    assert_response 200
  end

  test "should destroy camera" do
    assert_difference('Camera.count', -1) do
      delete camera_url(@camera), as: :json
    end

    assert_response 204
  end
end
