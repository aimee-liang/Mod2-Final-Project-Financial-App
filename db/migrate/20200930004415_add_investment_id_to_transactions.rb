class AddInvestmentIdToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :investment_id, :integer
  end
end
