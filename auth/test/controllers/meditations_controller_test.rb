require 'test_helper'

class MeditationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meditation = meditations(:one)
  end

  test "should get index" do
    get meditations_url
    assert_response :success
  end

  test "should get new" do
    get new_meditation_url
    assert_response :success
  end

  test "should create meditation" do
    assert_difference('Meditation.count') do
      post meditations_url, params: { meditation: {  } }
    end

    assert_redirected_to meditation_url(Meditation.last)
  end

  test "should show meditation" do
    get meditation_url(@meditation)
    assert_response :success
  end

  test "should get edit" do
    get edit_meditation_url(@meditation)
    assert_response :success
  end

  test "should update meditation" do
    patch meditation_url(@meditation), params: { meditation: {  } }
    assert_redirected_to meditation_url(@meditation)
  end

  test "should destroy meditation" do
    assert_difference('Meditation.count', -1) do
      delete meditation_url(@meditation)
    end

    assert_redirected_to meditations_url
  end
end
