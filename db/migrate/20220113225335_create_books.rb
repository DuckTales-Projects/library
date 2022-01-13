# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :publisher, null: false
      t.string :genre, null: false
      t.string :language, null: false
      t.string :edition, null: false
      t.integer :year, null: false
      t.string :place, null: false
      t.timestamps
    end
  end
end
