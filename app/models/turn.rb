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

class Turn < ActiveRecord::Base
  attr_accessible :round_id, :turn_points, :num_rolls
  has_many :rolls
  belongs_to :round
end
