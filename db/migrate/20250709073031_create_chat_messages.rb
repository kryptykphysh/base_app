class CreateChatMessages < ActiveRecord::Migration[8.1]
  def change
    create_table :chat_messages do |t|
      t.references :chat_room, null: false, foreign_key: { name: "fk_chat_messages_chat_room" }
      t.references :user, null: false, foreign_key: { name: "fk_chat_messages_user" }
      t.text :content

      t.timestamps
    end
  end
end
