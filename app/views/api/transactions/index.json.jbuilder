json.array! @transactions.each do |transaction|
  json.partial! "transaction.json.jbuilder", transaction: transaction
end