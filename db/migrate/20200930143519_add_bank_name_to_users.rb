class AddBankNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bank_name, :string
  end
end
