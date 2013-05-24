# == Schema Information
#
# Table name: dice
#
#  id         :integer          not null, primary key
#  value      :integer
#  turn_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Die do
  describe '.create' do
    it 'has an id and value' do
      die = Die.create
      expect(die.id).to_not be nil
      expect(die.value).to_not be nil
    end
  end
end
