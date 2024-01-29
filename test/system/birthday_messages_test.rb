require "application_system_test_case"

class BirthdayMessagesTest < ApplicationSystemTestCase
  setup do
    @birthday_message = birthday_messages(:one)
  end

  test "visiting the index" do
    visit birthday_messages_url
    assert_selector "h1", text: "Birthday messages"
  end

  test "should create birthday message" do
    visit birthday_messages_url
    click_on "New birthday message"

    fill_in "Name", with: @birthday_message.name
    click_on "Create Birthday message"

    assert_text "Birthday message was successfully created"
    click_on "Back"
  end

  test "should update Birthday message" do
    visit birthday_message_url(@birthday_message)
    click_on "Edit this birthday message", match: :first

    fill_in "Name", with: @birthday_message.name
    click_on "Update Birthday message"

    assert_text "Birthday message was successfully updated"
    click_on "Back"
  end

  test "should destroy Birthday message" do
    visit birthday_message_url(@birthday_message)
    click_on "Destroy this birthday message", match: :first

    assert_text "Birthday message was successfully destroyed"
  end
end
