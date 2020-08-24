# frozen_string_literal: true

class Role < ApplicationRecord
  belongs_to :experiences, inverse_of: :roles
end
