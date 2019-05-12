class Api::TransactionsController < ApplicationController

  def index
    @transactions = Transaction.where(account_id: params[:account_id])
    render "index.json.jbuilder"
  end

  def create
    @transaction = Transaction.new(
      transaction_type: params[:type],
      amount: params[:amount],
      account_id: params[:account_id]
    )
    if @transaction.save
      render "show.json.jbuilder"
    else
      render json: {errors: @transaction.errors.full_messages}, status: 422
    end
  end

end
