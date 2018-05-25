class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.date :date
      t.float :cost
      t.string :expense_category
      t.references :budget, foreign_key: true

      t.timestamps
    end
  end
end
