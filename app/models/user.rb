# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true
end
