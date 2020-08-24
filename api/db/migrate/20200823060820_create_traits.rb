# frozen_string_literal: true

class CreateTraits < ActiveRecord::Migration[6.0]
  def change
    create_table :traits do |t|
      t.string :description, null: false

      t.timestamps
    end
  end
end
