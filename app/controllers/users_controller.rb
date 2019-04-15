class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create!(user_params)

    redirect_to user_path(@user)
  end

  def new
    @user = User.new
  end

  def update
    @user = User.find(params[:user_id])
    @user.accounts << Account.create(remaining_funds: params[:Transportation], spent_funds: 0, name: 'Transportation')
    @user.accounts << Account.create(remaining_funds: params[:Groceries], spent_funds: 0, name: 'Groceries')
    @user.accounts << Account.create(remaining_funds: params[:Bills], spent_funds: 0, name: 'Bills')
    @user.accounts << Account.create(remaining_funds: params[:Entertainment], spent_funds: 0, name: 'Entertainment')
    @user.accounts << Account.create(remaining_funds: params['Dining Out'], spent_funds: 0, name: 'Dining Out')
    @user.accounts << Account.create(remaining_funds: params[:Shopping], spent_funds: 0, name: 'Shopping')
    @user.save
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :total_funds)
  end
end
