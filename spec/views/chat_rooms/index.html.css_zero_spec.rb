require 'rails_helper'

RSpec.describe "chat_rooms/index", type: :view do
  before(:each) do
    assign(:chat_rooms, [
      ChatRoom.create!(
        title: "Title",
        description: "MyText"
      ),
      ChatRoom.create!(
        title: "Title",
        description: "MyText"
      )
    ])
  end

  it "renders a list of chat_rooms" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
