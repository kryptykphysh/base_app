require 'rails_helper'

RSpec.describe "chat_messages/index", type: :view do
  before(:each) do
    assign(:chat_messages, [
      ChatMessage.create!(
        chat_room: nil,
        user: nil,
        content: "MyText"
      ),
      ChatMessage.create!(
        chat_room: nil,
        user: nil,
        content: "MyText"
      )
    ])
  end

  it "renders a list of chat_messages" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
