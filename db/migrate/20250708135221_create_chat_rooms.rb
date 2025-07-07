class CreateChatRooms < ActiveRecord::Migration[8.1]
  def change
    create_table :chat_rooms do |t|
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps
    end
    add_index :chat_rooms, :title, unique: true
  end
end
