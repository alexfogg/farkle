require 'spec_helper'

describe Roll do
  describe '.create' do
    it 'has an id' do
      roll = Roll.create
      expect(roll.id).to_not be nil
    end
  end
end