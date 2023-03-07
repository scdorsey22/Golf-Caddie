require "test_helper"

class ScorecardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scorecard = scorecards(:one)
  end

  test "should get index" do
    get scorecards_url, as: :json
    assert_response :success
  end

  test "should create scorecard" do
    assert_difference("Scorecard.count") do
      post scorecards_url, params: { scorecard: { course_name: @scorecard.course_name, course_rating: @scorecard.course_rating, handicap: @scorecard.handicap, hole_number: @scorecard.hole_number, par: @scorecard.par, slope_rating: @scorecard.slope_rating, tee_color: @scorecard.tee_color, yardage: @scorecard.yardage } }, as: :json
    end

    assert_response :created
  end

  test "should show scorecard" do
    get scorecard_url(@scorecard), as: :json
    assert_response :success
  end

  test "should update scorecard" do
    patch scorecard_url(@scorecard), params: { scorecard: { course_name: @scorecard.course_name, course_rating: @scorecard.course_rating, handicap: @scorecard.handicap, hole_number: @scorecard.hole_number, par: @scorecard.par, slope_rating: @scorecard.slope_rating, tee_color: @scorecard.tee_color, yardage: @scorecard.yardage } }, as: :json
    assert_response :success
  end

  test "should destroy scorecard" do
    assert_difference("Scorecard.count", -1) do
      delete scorecard_url(@scorecard), as: :json
    end

    assert_response :no_content
  end
end
