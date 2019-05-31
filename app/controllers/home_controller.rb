# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @user = User.new
  end
end
