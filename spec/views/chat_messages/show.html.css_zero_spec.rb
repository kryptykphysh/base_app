require 'rails_helper'

RSpec.describe "chat_messages/show", type: :view do
  before(:each) do
    assign(:chat_message, ChatMessage.create!(
      chat_room: nil,
      user: nil,
      content: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
