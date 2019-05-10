class Api::AccountsController < ApplicationController

  def create
    @account = Account.new(
      credit_limit: params[:credit_limit],
      apr: params[:apr]
    )
    if @account.save
      render "show.json.jbuilder"
    else
      render json: {errors: @account.errors.full_messages}, status: 422
    end
  end

end
