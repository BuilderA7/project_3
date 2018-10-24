require "application_system_test_case"

class MeditationsTest < ApplicationSystemTestCase
  setup do
    @meditation = meditations(:one)
  end

  test "visiting the index" do
    visit meditations_url
    assert_selector "h1", text: "Meditations"
  end

  test "creating a Meditation" do
    visit meditations_url
    click_on "New Meditation"

    click_on "Create Meditation"

    assert_text "Meditation was successfully created"
    click_on "Back"
  end

  test "updating a Meditation" do
    visit meditations_url
    click_on "Edit", match: :first

    click_on "Update Meditation"

    assert_text "Meditation was successfully updated"
    click_on "Back"
  end

  test "destroying a Meditation" do
    visit meditations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meditation was successfully destroyed"
  end
end
