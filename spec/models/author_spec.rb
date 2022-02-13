# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'presence validation' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'length validation' do
    subject(:invalid_name) { Author.new(name: 'a' * 101) }
    subject(:valid_name) { Author.new(name: 'a' * 100) }

    it { is_expected.to validate_length_of(:name).is_at_most(100) }

    context 'when receive invalid names' do
      it 'do not be valid' do
        expect(invalid_name.valid?).to eq(false)
      end
    end

    context 'when receive valid names' do
      it 'be valid' do
        expect(valid_name.valid?).to eq(true)
      end
    end
  end
end
