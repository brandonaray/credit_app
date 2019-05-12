class Transaction < ApplicationRecord
  belongs_to :account
  validates :amount, numericality: true
  validates :account_id, numericality: {only_integer: true}
end
