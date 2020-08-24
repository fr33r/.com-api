# frozen_string_literal: true

class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.datetime :start, null: false
      t.datetime :end

      t.timestamps
    end
  end
end
