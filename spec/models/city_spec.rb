require 'rails_helper'

RSpec.describe City do
  describe '.create' do
    it 'creates a new city' do
      expect(City.create()).to be_a City
    end
    it 'is invalid without a country name' do
      expect(City.create(city_name: 'Paris')).not_to be_valid
    end
    it 'is invalid without a city name' do
      expect(City.create(country_name: 'France')).not_to be_valid
    end
    it 'is valid with a city name and a country name' do
      expect(City.create(city_name: 'Paris', country_name: 'France')).to be_valid
    end
  end
end
