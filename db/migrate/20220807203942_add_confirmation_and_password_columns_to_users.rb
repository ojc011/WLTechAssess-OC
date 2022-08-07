class AddConfirmationAndPasswordColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :confirmed_at, :datetime
    add_column :users, :password_digest, :string, null: false
  end
end