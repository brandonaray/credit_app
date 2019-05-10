class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :type
      t.decimal :amount
      t.integer :account_id

      t.timestamps
    end
  end
end
