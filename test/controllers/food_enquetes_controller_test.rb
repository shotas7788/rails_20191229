require 'test_helper'

class FoodEnquetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_enquete = food_enquetes(:one)
  end

  test "should get index" do
    get food_enquetes_url
    assert_response :success
  end

  test "should get new" do
    get new_food_enquete_url
    assert_response :success
  end

  test "should create food_enquete" do
    assert_difference('FoodEnquete.count') do
      post food_enquetes_url, params: { food_enquete: { age: @food_enquete.age, food_id: @food_enquete.food_id, mail: @food_enquete.mail, name: @food_enquete.name, present_id: @food_enquete.present_id, request: @food_enquete.request, score: @food_enquete.score } }
    end

    assert_redirected_to food_enquete_url(FoodEnquete.last)
  end

  test "should show food_enquete" do
    get food_enquete_url(@food_enquete)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_enquete_url(@food_enquete)
    assert_response :success
  end

  test "should update food_enquete" do
    patch food_enquete_url(@food_enquete), params: { food_enquete: { age: @food_enquete.age, food_id: @food_enquete.food_id, mail: @food_enquete.mail, name: @food_enquete.name, present_id: @food_enquete.present_id, request: @food_enquete.request, score: @food_enquete.score } }
    assert_redirected_to food_enquete_url(@food_enquete)
  end

  test "should destroy food_enquete" do
    assert_difference('FoodEnquete.count', -1) do
      delete food_enquete_url(@food_enquete)
    end

    assert_redirected_to food_enquetes_url
  end
end
