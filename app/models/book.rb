# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title,
            :author,
            :publisher,
            :genre,
            :language,
            :edition,
            :year,
            :place, presence: true
end
