require 'rails_helper'

RSpec.describe "chat_rooms/show", type: :view do
  before(:each) do
    assign(:chat_room, ChatRoom.create!(
      title: "Title",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
