require 'test_helper'

class OtakusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @otaku = otakus(:one)
  end

  test "should get index" do
    get otakus_url
    assert_response :success
  end

  test "should get new" do
    get new_otaku_url
    assert_response :success
  end

  test "should create otaku" do
    assert_difference('Otaku.count') do
      post otakus_url, params: { otaku: { birthday: @otaku.birthday, name: @otaku.name } }
    end

    assert_redirected_to otaku_url(Otaku.last)
  end

  test "should show otaku" do
    get otaku_url(@otaku)
    assert_response :success
  end

  test "should get edit" do
    get edit_otaku_url(@otaku)
    assert_response :success
  end

  test "should update otaku" do
    patch otaku_url(@otaku), params: { otaku: { birthday: @otaku.birthday, name: @otaku.name } }
    assert_redirected_to otaku_url(@otaku)
  end

  test "should destroy otaku" do
    assert_difference('Otaku.count', -1) do
      delete otaku_url(@otaku)
    end

    assert_redirected_to otakus_url
  end
end
