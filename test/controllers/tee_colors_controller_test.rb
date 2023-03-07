require "test_helper"

class TeeColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tee_color = tee_colors(:one)
  end

  test "should get index" do
    get tee_colors_url, as: :json
    assert_response :success
  end

  test "should create tee_color" do
    assert_difference("TeeColor.count") do
      post tee_colors_url, params: { tee_color: { color: @tee_color.color } }, as: :json
    end

    assert_response :created
  end

  test "should show tee_color" do
    get tee_color_url(@tee_color), as: :json
    assert_response :success
  end

  test "should update tee_color" do
    patch tee_color_url(@tee_color), params: { tee_color: { color: @tee_color.color } }, as: :json
    assert_response :success
  end

  test "should destroy tee_color" do
    assert_difference("TeeColor.count", -1) do
      delete tee_color_url(@tee_color), as: :json
    end

    assert_response :no_content
  end
end
