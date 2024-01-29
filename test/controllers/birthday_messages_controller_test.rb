require "test_helper"

class BirthdayMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @birthday_message = birthday_messages(:one)
  end

  test "should get index" do
    get birthday_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_birthday_message_url
    assert_response :success
  end

  test "should create birthday_message" do
    assert_difference("BirthdayMessage.count") do
      post birthday_messages_url, params: { birthday_message: { name: @birthday_message.name } }
    end

    assert_redirected_to birthday_message_url(BirthdayMessage.last)
  end

  test "should show birthday_message" do
    get birthday_message_url(@birthday_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_birthday_message_url(@birthday_message)
    assert_response :success
  end

  test "should update birthday_message" do
    patch birthday_message_url(@birthday_message), params: { birthday_message: { name: @birthday_message.name } }
    assert_redirected_to birthday_message_url(@birthday_message)
  end

  test "should destroy birthday_message" do
    assert_difference("BirthdayMessage.count", -1) do
      delete birthday_message_url(@birthday_message)
    end

    assert_redirected_to birthday_messages_url
  end
end
