class AddEmailAddressToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email_address, :string
  end
end
