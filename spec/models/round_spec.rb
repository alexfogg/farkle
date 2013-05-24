# == Schema Information
#
# Table name: rounds
#
#  id           :integer          not null, primary key
#  game_id      :integer
#  num_turns    :integer
#  round_points :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Round do
  describe '.create' do
    it 'has an id' do
      round = Round.create
      expect(round.id).to_not be nil
    end
  end
end
