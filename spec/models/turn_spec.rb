# == Schema Information
#
# Table name: turns
#
#  id          :integer          not null, primary key
#  round_id    :integer
#  turn_points :integer
#  num_rolls   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Turn do
  describe '.create' do
    it 'has an id' do
      turn = Turn.create
      expect(turn.id).to_not be nil
    end
  end
end
