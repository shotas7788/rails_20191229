require "application_system_test_case"

class GymEnquetesTest < ApplicationSystemTestCase
  setup do
    @gym_enquete = gym_enquetes(:one)
  end

  test "visiting the index" do
    visit gym_enquetes_url
    assert_selector "h1", text: "Gym Enquetes"
  end

  test "creating a Gym enquete" do
    visit gym_enquetes_url
    click_on "New Gym Enquete"

    fill_in "Age", with: @gym_enquete.age
    fill_in "Course", with: @gym_enquete.course_id
    fill_in "Mail", with: @gym_enquete.mail
    fill_in "Name", with: @gym_enquete.name
    fill_in "Present", with: @gym_enquete.present_id
    fill_in "Request", with: @gym_enquete.request
    fill_in "Score", with: @gym_enquete.score
    click_on "Create Gym enquete"

    assert_text "Gym enquete was successfully created"
    click_on "Back"
  end

  test "updating a Gym enquete" do
    visit gym_enquetes_url
    click_on "Edit", match: :first

    fill_in "Age", with: @gym_enquete.age
    fill_in "Course", with: @gym_enquete.course_id
    fill_in "Mail", with: @gym_enquete.mail
    fill_in "Name", with: @gym_enquete.name
    fill_in "Present", with: @gym_enquete.present_id
    fill_in "Request", with: @gym_enquete.request
    fill_in "Score", with: @gym_enquete.score
    click_on "Update Gym enquete"

    assert_text "Gym enquete was successfully updated"
    click_on "Back"
  end

  test "destroying a Gym enquete" do
    visit gym_enquetes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gym enquete was successfully destroyed"
  end
end
