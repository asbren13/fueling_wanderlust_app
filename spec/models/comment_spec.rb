require 'rails_helper'

RSpec.describe Comment do

  describe '.create' do
    it 'creates a new comment' do
      expect(Comment.create()).to be_a Comment
    end
    it 'is invalid without a body' do
      expect(Comment.create(body: nil)).not_to be_valid
    end
    it 'is valid with a body' do
      expect(Comment.create(body: "awesome suggestions!")).to be_valid
    end

  end
end
