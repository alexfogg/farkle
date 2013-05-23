require 'spec_helper'

describe Die do
  describe '.create' do
    it 'has an id' do
      die = Die.create
      expect(die.id).to_not be nil
    end
  end
end