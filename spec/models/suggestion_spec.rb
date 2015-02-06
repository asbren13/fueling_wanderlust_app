require 'rails_helper'

RSpec.describe Suggestion do
  describe '.create' do
    it 'creates a new suggestion' do
      expect(Suggestion.create()).to be_a Suggestion
    end
  end
end
