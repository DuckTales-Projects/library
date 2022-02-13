# frozen_string_literal: true

class Author < ApplicationRecord
  validates :name, length: { maximum: 100 }, presence: true
end
