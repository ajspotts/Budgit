class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)

    redirect_to account_path(@account)
  end

  def update
    @account = Account.find(params[:account_id])
    @account.spent_funds += params[:Account].to_f
    @account.remaining_funds -= params[:Account].to_f
    @account.save
    redirect_to user_path(params[:user_id])
  end
end
