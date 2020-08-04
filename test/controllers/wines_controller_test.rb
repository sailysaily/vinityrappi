require 'test_helper'

class WinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine = wines(:one)
  end

  test "should get index" do
    get wines_url
    assert_response :success
  end

  test "should get new" do
    get new_wine_url
    assert_response :success
  end

  test "should create wine" do
    assert_difference('Wine.count') do
      post wines_url, params: { wine: { backgroud_image: @wine.backgroud_image, color: @wine.color, food_pairing: @wine.food_pairing, grapes: @wine.grapes, name: @wine.name, price: @wine.price, rating: @wine.rating, region: @wine.region, story: @wine.story, wine_style: @wine.wine_style, winery: @wine.winery, year: @wine.year } }
    end

    assert_redirected_to wine_url(Wine.last)
  end

  test "should show wine" do
    get wine_url(@wine)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_url(@wine)
    assert_response :success
  end

  test "should update wine" do
    patch wine_url(@wine), params: { wine: { backgroud_image: @wine.backgroud_image, color: @wine.color, food_pairing: @wine.food_pairing, grapes: @wine.grapes, name: @wine.name, price: @wine.price, rating: @wine.rating, region: @wine.region, story: @wine.story, wine_style: @wine.wine_style, winery: @wine.winery, year: @wine.year } }
    assert_redirected_to wine_url(@wine)
  end

  test "should destroy wine" do
    assert_difference('Wine.count', -1) do
      delete wine_url(@wine)
    end

    assert_redirected_to wines_url
  end
end
