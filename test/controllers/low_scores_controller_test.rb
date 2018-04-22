require 'test_helper'

class LowScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @low_score = low_scores(:one)
  end

  test "should get index" do
    get low_scores_url
    assert_response :success
  end

  test "should get new" do
    get new_low_score_url
    assert_response :success
  end

  test "should create low_score" do
    assert_difference('LowScore.count') do
      post low_scores_url, params: { low_score: { game: @low_score.game, score: @low_score.score } }
    end

    assert_redirected_to low_score_url(LowScore.last)
  end

  test "should show low_score" do
    get low_score_url(@low_score)
    assert_response :success
  end

  test "should get edit" do
    get edit_low_score_url(@low_score)
    assert_response :success
  end

  test "should update low_score" do
    patch low_score_url(@low_score), params: { low_score: { game: @low_score.game, score: @low_score.score } }
    assert_redirected_to low_score_url(@low_score)
  end

  test "should destroy low_score" do
    assert_difference('LowScore.count', -1) do
      delete low_score_url(@low_score)
    end

    assert_redirected_to low_scores_url
  end
end
