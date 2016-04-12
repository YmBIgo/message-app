class ChangeColumnMessages < ActiveRecord::Migration
  def change
    add_column :messages, :chat_id, :integer
    remove_column :messages, :receiver, :integer
  end
end
