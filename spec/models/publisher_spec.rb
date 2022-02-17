# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Publisher, type: :model do
  describe 'presence validation' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'length validation' do
    subject(:publisher) { build(:publisher, name:) }

    let(:name) { 'a' * 100 }

    it { is_expected.to validate_length_of(:name).is_at_most(100) }

    context 'when receive invalid names' do
      let(:name) { 'a' * 101 }

      it 'do not be valid' do
        expect(publisher.valid?).to eq false
      end
    end

    context 'when receive valid names' do
      it 'be valid' do
        expect(publisher.valid?).to eq true
      end
    end
  end
end
