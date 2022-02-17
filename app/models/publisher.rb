# frozen_string_literal: true

class Publisher < ApplicationRecord
  validates :name, length: { maximum: 100 }, presence: true
end
