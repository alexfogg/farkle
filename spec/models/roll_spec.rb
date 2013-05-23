# == Schema Information
#
# Table name: rolls
#
#  id         :integer          not null, primary key
#  points     :integer
#  dice       :integer
#  name       :string(255)
#  turn_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Roll do
  describe '.create' do
    it 'has an id' do
      roll = Roll.create
      expect(roll.id).to_not be nil
    end
  end
end
