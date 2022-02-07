# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  subject(:book) { build(:book) }
  describe 'Presence Validation' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:author) }
    it { is_expected.to validate_presence_of(:publisher) }
    it { is_expected.to validate_presence_of(:genre) }
    it { is_expected.to validate_presence_of(:language) }
    it { is_expected.to validate_presence_of(:edition) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_presence_of(:place) }
  end

  describe 'Check if instances are being saved' do
    context 'when receive valid attributes' do
      it 'must save to database' do
        expect(book.new_record?).to eq(true)
        expect(book.save).to eq(true)
      end
    end

    context 'when receive invalid attributes' do
      it 'must not save to database' do
        book.title = nil
        expect(book.new_record?).to eq(true)
        expect(book.save).to eq(false)
        expect(book.valid?).to eq(false)
      end
    end
  end
end
