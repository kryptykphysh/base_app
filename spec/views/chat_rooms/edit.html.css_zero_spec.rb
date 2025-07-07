require 'rails_helper'

RSpec.describe "chat_rooms/edit", type: :view do
  let(:chat_room) {
    ChatRoom.create!(
      title: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:chat_room, chat_room)
  end

  it "renders the edit chat_room form" do
    render

    assert_select "form[action=?][method=?]", chat_room_path(chat_room), "post" do
      assert_select "input[name=?]", "chat_room[title]"

      assert_select "textarea[name=?]", "chat_room[description]"
    end
  end
end
