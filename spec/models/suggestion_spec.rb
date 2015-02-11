require 'rails_helper'

RSpec.describe Suggestion do
  describe '.create' do
    it 'creates a new suggestion' do
      expect(Suggestion.create).to be_a Suggestion
    end

    it 'is invalid without an idea' do
      expect(Suggestion.create(name: 'Ashlinn')).not_to be_valid
    end
    it 'is valid with a name and an idea' do
      expect(
        Suggestion.create(
          name: 'Ashlinn',
          ideas: '1) Go on a Nyhavn boat cruise.
            2) eat one of their famous hotdogs!')
      ).to be_valid
    end
  end
end
