class Account < ApplicationRecord
  has_many :transactions
  validates :credit_limit, numericality: {greater_than_or_equal_to: 0}
  validates :apr, numericality: {greater_than_or_equal_to: 0}

  def current_balance
    return transactions.sum(:amount)
  end
end
