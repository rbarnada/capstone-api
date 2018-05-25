class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.float :income
      t.float :month_budget
      t.date :start_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
