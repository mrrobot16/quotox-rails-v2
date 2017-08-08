require 'test_helper'

class DetoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detox = detoxes(:one)
  end

  test "should get index" do
    get detoxes_url, as: :json
    assert_response :success
  end

  test "should create detox" do
    assert_difference('Detox.count') do
      post detoxes_url, params: { detox: { drug_name: @detox.drug_name, last_time: @detox.last_time } }, as: :json
    end

    assert_response 201
  end

  test "should show detox" do
    get detox_url(@detox), as: :json
    assert_response :success
  end

  test "should update detox" do
    patch detox_url(@detox), params: { detox: { drug_name: @detox.drug_name, last_time: @detox.last_time } }, as: :json
    assert_response 200
  end

  test "should destroy detox" do
    assert_difference('Detox.count', -1) do
      delete detox_url(@detox), as: :json
    end

    assert_response 204
  end
end
