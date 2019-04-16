class CreateExpensesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses_tables do |t|
      t.string :name
      t.float :cost
      t.date :year
 
      t.timestamps
    end
  end
end
