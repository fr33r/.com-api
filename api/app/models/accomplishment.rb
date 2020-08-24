# frozen_string_literal: true

class Accomplishment < ApplicationRecord
  belongs_to :experiences, inverse_of: :accomplishments
end
