# frozen_string_literal: true

class CreateContactMethods < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_methods do |t|
      t.string :method_type, null: false
      t.string :name, null: false
      t.string :reachable_at, null: false

      t.timestamps
    end
  end
end
