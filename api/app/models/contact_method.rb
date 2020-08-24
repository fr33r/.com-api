# frozen_string_literal: true

class ContactMethod < ApplicationRecord
  TYPES = { phone: 'phone', email: 'email' }.freeze
  enum method_type: TYPES
end
