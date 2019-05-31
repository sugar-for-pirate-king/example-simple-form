# frozen_string_literal: true

# User Resources
class UsersController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      flash[:danger] = @user.errors.full_messages.join('')
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :phone_number, :address)
  end
end
