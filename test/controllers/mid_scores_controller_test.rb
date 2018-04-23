require 'test_helper'

class MidScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mid_score = mid_scores(:one)
  end

  test "should get index" do
    get mid_scores_url
    assert_response :success
  end

  test "should get new" do
    get new_mid_score_url
    assert_response :success
  end

  test "should create mid_score" do
    assert_difference('MidScore.count') do
      post mid_scores_url, params: { mid_score: { game: @mid_score.game, score: @mid_score.score } }
    end

    assert_redirected_to mid_score_url(MidScore.last)
  end

  test "should show mid_score" do
    get mid_score_url(@mid_score)
    assert_response :success
  end

  test "should get edit" do
    get edit_mid_score_url(@mid_score)
    assert_response :success
  end

  test "should update mid_score" do
    patch mid_score_url(@mid_score), params: { mid_score: { game: @mid_score.game, score: @mid_score.score } }
    assert_redirected_to mid_score_url(@mid_score)
  end

  test "should destroy mid_score" do
    assert_difference('MidScore.count', -1) do
      delete mid_score_url(@mid_score)
    end

    assert_redirected_to mid_scores_url
  end
end
