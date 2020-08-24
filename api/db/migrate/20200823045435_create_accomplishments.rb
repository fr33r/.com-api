# frozen_string_literal: true

class CreateAccomplishments < ActiveRecord::Migration[6.0]
  def change
    create_table :accomplishments do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.timestamp :achieved_at, null: false

      t.timestamps
    end
  end
end
