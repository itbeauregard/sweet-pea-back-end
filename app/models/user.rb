# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :registrations
  has_many :quote_requests
  has_many :examples
end
