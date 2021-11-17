class CreateChatPages < ActiveRecord::Migration[6.1]
  def change
    create_table :chat_pages do |t|
      t.integer :room_id
      t.integer :chat_id
      t.integer :message_id

      t.timestamps
    end
  end
end
