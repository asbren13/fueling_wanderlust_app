require 'rails_helper'

RSpec.describe City do
  describe '.create' do
    it 'creates a new city' do
      expect(City.create()).to be_a City
    end

  end
end
