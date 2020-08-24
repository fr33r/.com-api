# frozen_string_literal: true

class Experience < ApplicationRecord
  has_many :accomplishments, inverse_of: :experiences
  has_many :roles, inverse_of: :experiences
end
