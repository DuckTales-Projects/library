# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe '#valid' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:author) }
    it { is_expected.to validate_presence_of(:publisher) }
    it { is_expected.to validate_presence_of(:genre) }
    it { is_expected.to validate_presence_of(:language) }
    it { is_expected.to validate_presence_of(:edition) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_presence_of(:place) }
  end
end
