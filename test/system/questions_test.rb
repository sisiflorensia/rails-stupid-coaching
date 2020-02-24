require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit root_url
    assert_selector "input", minimum: "1"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit root_url
    fill_in "question", with: "Hello"
    click_on "Submit"
    take_screenshot

    assert_text "I don't care, get dressed and go to work!"
  end
end
