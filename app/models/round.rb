# == Schema Information
#
# Table name: rounds
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  num_turns  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Round < ActiveRecord::Base
  attr_accessible :game_id, :num_turns
  belongs_to :game
  has_many :turns
end
