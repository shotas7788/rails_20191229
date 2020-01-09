require 'test_helper'

class GymEnquetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym_enquete = gym_enquetes(:one)
  end

  test "should get index" do
    get gym_enquetes_url
    assert_response :success
  end

  test "should get new" do
    get new_gym_enquete_url
    assert_response :success
  end

  test "should create gym_enquete" do
    assert_difference('GymEnquete.count') do
      post gym_enquetes_url, params: { gym_enquete: { age: @gym_enquete.age, course_id: @gym_enquete.course_id, mail: @gym_enquete.mail, name: @gym_enquete.name, present_id: @gym_enquete.present_id, request: @gym_enquete.request, score: @gym_enquete.score } }
    end

    assert_redirected_to gym_enquete_url(GymEnquete.last)
  end

  test "should show gym_enquete" do
    get gym_enquete_url(@gym_enquete)
    assert_response :success
  end

  test "should get edit" do
    get edit_gym_enquete_url(@gym_enquete)
    assert_response :success
  end

  test "should update gym_enquete" do
    patch gym_enquete_url(@gym_enquete), params: { gym_enquete: { age: @gym_enquete.age, course_id: @gym_enquete.course_id, mail: @gym_enquete.mail, name: @gym_enquete.name, present_id: @gym_enquete.present_id, request: @gym_enquete.request, score: @gym_enquete.score } }
    assert_redirected_to gym_enquete_url(@gym_enquete)
  end

  test "should destroy gym_enquete" do
    assert_difference('GymEnquete.count', -1) do
      delete gym_enquete_url(@gym_enquete)
    end

    assert_redirected_to gym_enquetes_url
  end
end
