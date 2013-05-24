# == Schema Information
#
# Table name: scores
#
#  id          :integer          not null, primary key
#  final_score :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Score do
  describe '.create' do
    it 'has an id' do
      score = Score.create
      expect(score.id).to_not be nil
    end
  end
end