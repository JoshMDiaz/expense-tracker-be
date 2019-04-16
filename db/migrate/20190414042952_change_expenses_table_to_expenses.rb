class ChangeExpensesTableToExpenses < ActiveRecord::Migration[5.2]
  def change
    rename_table :expenses_tables, :expenses
  end
end