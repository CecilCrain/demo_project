class AddReplyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reply, :string
  end
end
