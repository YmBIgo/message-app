class ChangeColumnMessages2 < ActiveRecord::Migration

  def self.up
    add_column :messages, :room_id, :integer
    remove_column :messages, :chat_id, :integer
  end

  def down
    add_column :messages, :chat_id, :integer
    remove_column :messages, :room_id, :integer
  end

end
