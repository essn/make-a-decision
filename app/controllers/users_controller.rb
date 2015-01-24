class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show
    @decisions = @user.decisions.all
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
