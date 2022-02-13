# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'presence validation' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'length validation' do
    it { is_expected.to validate_length_of(:name).is_at_most(100) }
  end
end
