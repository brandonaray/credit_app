class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.decimal :credit_limit
      t.decimal :apr

      t.timestamps
    end
  end
end
